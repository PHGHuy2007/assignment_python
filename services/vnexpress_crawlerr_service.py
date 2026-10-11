import time
import requests
from bs4 import BeautifulSoup
import concurrent.futures

from services.crawler_service import CrawlerService
from repositories.article_repository import ArticleRepository


class VnexpressCrawlerService(CrawlerService):

    def __init__(self):
        self.source_link = "https://vnexpress.net/the-thao"
        self.category_id = 1
        self.links = set()
        self.article_repo = ArticleRepository()

    def crawl_fresh_links(self):
        print("\n[VnExpress] Đang cào link bài viết mới...")
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }

        try:
            response = requests.get(self.source_link, headers=headers, timeout=10)
            response.raise_for_status()

            soup = BeautifulSoup(response.text, 'html.parser')
            list_a_tag = soup.select('article h3.title-news a')

            for a in list_a_tag:
                url = a['href'].split('#')[0]
                self.links.add(url)

            print(f"[VnExpress] Tìm thấy {len(self.links)} links. Đang lưu vào DB...")
            saved_count = 0
            for link in self.links:
                if self.article_repo.add_article(url=link, category_id=self.category_id):
                    saved_count += 1

            print(f"[VnExpress] Đã lưu mới {saved_count} bài viết vào DB.")

        except requests.exceptions.RequestException as e:
            print(f"[Lỗi] Không thể lấy link từ VnExpress: {e}")

    def crawl_link_detail(self):
        print(f"\n[VnExpress] Bắt đầu cào chi tiết {len(self.links)} bài viết...")
        start_time = time.time()
        with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
            executor.map(self.crawl_detail, self.links)

        end_time = time.time()
        print(f"\n[VnExpress] Tổng thời gian hoàn thành: {round(end_time - start_time, 2)} giây")

    def crawl_detail(self, link):
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        try:
            response = requests.get(link, headers=headers, timeout=10)
            response.raise_for_status()

            soup = BeautifulSoup(response.text, 'html.parser')
            title_tag = soup.select_one('h1.title-detail')

            if title_tag:
                news_title = title_tag.text.strip()
                print(f"-> Đã cào chi tiết: {news_title}")

        except requests.exceptions.RequestException as e:
            print(f"-> Lỗi mạng khi truy cập {link}: {e}")
        except Exception as e:
            print(f"-> Lỗi phân tích cú pháp với {link}: {e}")