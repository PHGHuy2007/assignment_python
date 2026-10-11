# File: main.py
from services.crawler_service import CrawlerService
from services.muong14_crawler_service import Muong14CrawlerService
from services.vnexpress_crawlerr_service import VnexpressCrawlerService
from services.vietnamnet_crawler_service import VietnamNetCrawlerService
from repositories.source_repository import SourceRepository
from repositories.article_repository import ArticleRepository

def menu_nguon_tin():
    repo_nguon = SourceRepository()
    while True:
        print("\n--- QUẢN LÝ NGUỒN TIN ---")
        print("1. Xem danh sách nguồn")
        print("2. Thêm nguồn mới")
        print("3. Xóa nguồn (Đổi sang Deactive)")
        print("0. Quay lại")
        chon = input("Chọn: ")
        if chon == '1':
            kq = repo_nguon.get_all_sources()
            for k in kq:
                print(f"ID: {k['ID']} | Tên: {k['Name']} | Nguồn: {k['Domain']} | Trạng thái: {k['status']}")
        elif chon == '2':
            ten = input("Tên nguồn: ")
            domain = input("Domain (VD: vnexpress.net): ")
            path = input("Path (VD: /the-thao): ")
            l_selector = input("Link selector: ")
            t_selector = input("Title selector: ")
            repo_nguon.add_source(ten, domain, path, l_selector, t_selector)
            print("Thêm ok!")
        elif chon == '3':
            id_xoa = input("Nhập ID nguồn cần xóa: ")
            repo_nguon.delete_source(id_xoa)
            print("Xóa ok!")
        elif chon == '0':
            break
def menu_tin_tuc():
    repo_tin = ArticleRepository()
    while True:
        print("\n--- QUẢN LÝ TIN TỨC ---")
        print("1. Xem danh sách (phân trang)")
        print("2. Tìm kiếm (theo link)")
        print("3. Xóa tin tức")
        print("0. Quay lại")
        chon = input("Chọn: ")
        if chon == '1':
            trang = 0
            while True:
                offset = trang * 10
                kq = repo_tin.get_articles(10, offset)
                print(f"\n--- Trang {trang + 1} ---")
                for k in kq:
                    print(f"ID: {k['ID']} | URL: {k['Url']}")
            
                nav = input("Bấm > để tới, < để lùi, 0 để thoát: ")
                if nav == '>':
                    trang += 1
                elif nav == '<':
                    if trang > 0: trang -= 1
                elif nav == '0':
                    break
        elif chon == '2':
            tk = input("Nhập từ khóa tìm kiếm: ")
            kq = repo_tin.search_articles(tk)
            for k in kq:
                print(f"ID: {k['ID']} | URL: {k['Url']}")
        elif chon == '3':
            id_xoa = input("Nhập ID cần xóa: ")
            repo_tin.delete_article(id_xoa)
            print("Đã xóa!")
        elif chon == '0':
            break
def menu_crawler():
    print("\n--- CHẠY CRAWLER ---")
    print("1. Vnexpress")
    print("2. Kenh14 (Muong14)")
    print("3. VietNamNet")
    print("0. Quay lại")
    chon = input("Nhập lựa chọn nguồn cào: ")
    if chon == '1':
        crawl = VnexpressCrawlerService()
    elif chon == '2':
        crawl = Muong14CrawlerService()
    elif chon == '3':
        crawl = VietnamNetCrawlerService()
    elif chon == '0':
        return
    else:
        print("Sai lựa chọn.")
        return
    crawl.crawl_fresh_links()
    crawl.crawl_link_detail()

if __name__ == "__main__":
    while True:
        print("\n=== CHƯƠNG TRÌNH NEWS CRAWLER ===")
        print("1. Quản lý nguồn tin")
        print("2. Quản lý tin tức")
        print("3. Chạy Crawler")
        print("0. Thoát")
        luachon = input("Chọn chức năng chính: ")
        if luachon == '1':
            menu_nguon_tin()
        elif luachon == '2':
            menu_tin_tuc()
        elif luachon == '3':
            menu_crawler()
        elif luachon == '0':
            print("Nghỉ thôi!")
            break
        else:
            print("Nhập sai rồi, nhập lại đi.")