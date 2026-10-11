from repositories.db_connection import DatabaseConnection

class SourceRepository:
    def __init__(self):
        self.db = DatabaseConnection()

    def get_all_sources(self):
        conn = self.db.get_connection()
        cursor = conn.cursor(dictionary = True)
        try:
            query = "SELECT * FROM Sources WHERE status = 'Active'"
            cursor.execute(query)
            return cursor.fetchall()
        finally:
            cursor.close()
            conn.close()

    def add_source(self, name, domain, url_path, link_selector, title_selector):
        conn = self.db.get_connection()
        cursor = conn.cursor()
        try:
            query = """
                    INSERT INTO Sources (Name, Domain, Path, link_selector, title_selector)
                    VALUES (%s, %s, %s, %s, %s)
                    """
            values = (name, domain, url_path, link_selector, title_selector)
            cursor.execute(query, values)
            conn.commit()
            return cursor.lastrowid
        finally:
            cursor.close()
            conn.close()
    def delete_source(self, source_id):
        conn = self.db.get_connection()
        cursor = conn.cursor()
        try:
            query = "UPDATE Sources SET status = 'Deactive' WHERE ID = %s"
            cursor.execute(query, (source_id,))
            conn.commit()
        finally:
            cursor.close()
            conn.close()