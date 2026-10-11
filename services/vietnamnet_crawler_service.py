import time
import requests
from bs4 import BeautifulSoup
import concurrent.futures
from services.crawler_service import CrawlerService
from repositories.article_repository import ArticleRepository

class VietnamNetCrawlerService(CrawlerService):
    def __init__(self):
        self.domain = "https://vietnamnet.vn"
        self.source_link = "https://vietnamnet.vn/thoi-su"
        self.category_id = 3
        self.links = set()
        self.article_repo = ArticleRepository()
    def crawl_fresh_links(self):
        print("\n[VietnamNet] Đang cào link bài viết mới...")
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        try:
            response = requests.get(self.source_link, headers=headers, timeout=10)
            response.raise_for_status()
            soup = BeautifulSoup(response.text, 'html.parser')
            list_a_tag = soup.select('h3.vnn-title a, h3.title a')
            for a in list_a_tag:
                href = a.get('href')
                if not href:
                    continue
                if isinstance(href, list):
                    href = href[0]
                href = str(href)
                if href.startswith('/'):
                    url = self.domain + href
                elif href.startswith('http'):
                    url = href
                else:
                    continue

                self.links.add(url)
            print(f"[VietnamNet] Tìm thấy {len(self.links)} links. Đang lưu vào DB...")
            saved_count = 0
            for link in self.links:
                if self.article_repo.add_article(url=link, category_id=self.category_id):
                    saved_count += 1
            print(f"[VietnamNet] Đã lưu mới {saved_count} bài viết vào DB.")
        except requests.exceptions.RequestException as e:
            print(f"[Lỗi] Không thể lấy link từ VietnamNet: {e}")
    def crawl_link_detail(self):
        if not self.links:
            print("\n[VietnamNet] Không có link nào để cào chi tiết.")
            return
        print(f"\n[VietnamNet] Bắt đầu cào chi tiết {len(self.links)} bài viết...")
        start_time = time.time()
        with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
            executor.map(self.crawl_detail, self.links)
        end_time = time.time()
        print(f"\n[VietnamNet] Tổng thời gian hoàn thành: {round(end_time - start_time, 2)} giây")

    def crawl_detail(self, link):
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        try:
            response = requests.get(link, headers=headers, timeout=10)
            response.raise_for_status()
            soup = BeautifulSoup(response.text, 'html.parser')
            title_tag = soup.select_one('h1.content-detail-title')
            if title_tag:
                news_title = title_tag.text.strip()
                print(f"-> Đã cào chi tiết: {news_title}")
        except requests.exceptions.RequestException as e:
            print(f"-> Lỗi mạng khi truy cập {link}: {e}")
        except Exception as e:
            print(f"-> Lỗi phân tích cú pháp với {link}: {e}")