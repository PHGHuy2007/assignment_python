# File: repositories/article_repository.py
from repositories.db_connection import DatabaseConnection
import mysql.connector

class ArticleRepository:
    def __init__(self):
        self.db = DatabaseConnection()

    def add_article(self, url, category_id, slug=None):
        conn = self.db.get_connection()
        cursor = conn.cursor()
        try:
            check_query = "SELECT ID FROM Articles WHERE Url = %s"
            cursor.execute(check_query, (url,))
            if cursor.fetchone():
                return False
            insert_query = "INSERT INTO Articles (Url, Category_ID, Slug) VALUES (%s, %s, %s)"
            cursor.execute(insert_query, (url, category_id, slug))
            conn.commit()
            return True
        except mysql.connector.Error as err:
            print(f"Lỗi DB: {err}")
            return False
        finally:
            cursor.close()
            conn.close()
    
    def get_articles(self, limit=10, offset=0):
        conn = self.db.get_connection()
        cursor = conn.cursor(dictionary=True)
        try:
            cursor.execute("SELECT * FROM Articles LIMIT %s OFFSET %s", (limit, offset))
            return cursor.fetchall()
        finally:
            cursor.close()
            conn.close()

    def search_articles(self, keyword):
        conn = self.db.get_connection()
        cursor = conn.cursor(dictionary=True)
        try:
            query = "SELECT * FROM Articles WHERE Url LIKE %s" # Tạm tìm theo URL vì bảng của bạn chưa thấy có title
            cursor.execute(query, (f"%{keyword}%",))
            return cursor.fetchall()
        finally:
            cursor.close()
            conn.close()

    def delete_article(self, article_id):
        conn = self.db.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute("DELETE FROM Articles WHERE ID = %s", (article_id,))
            conn.commit()
        finally:
            cursor.close()
            conn.close()