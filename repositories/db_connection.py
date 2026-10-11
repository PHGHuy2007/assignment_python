import mysql.connector
from mysql.connector import Error

class DatabaseConnection:
    def __init__(self):
        self.host = "localhost"
        self.user = "root"
        self.password = ""
        self.database = "tintuc"

    def get_connection(self):
        try:
            connection = mysql.connector.connect(
                host=self.host,
                user=self.user,
                password=self.password,
                database=self.database
            )
            return connection
        except Error as e:
            print(f"Lỗi kết nối MySQL: {e}")
            return None