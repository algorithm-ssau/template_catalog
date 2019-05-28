import sqlite3

conn = sqlite3.connect("database.db")  # или :memory: чтобы сохранить в RAM
cursor = conn.cursor()

# Create database
cursor.execute("""CREATE TABLE Airplanes
                  (company text, model text, price int, capacity int, max_speed int, max_height int)
               """)