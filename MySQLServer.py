# CREATE DATABASE IF NOT EXISTS alx_book_store;
import mysql.connector

try:
    cnx = mysql.connector.connect(
        host="localhost",
        user="root",
        password="database",
        database="alx_book_store",
        port =3301
    )

    if cnx is True:
        cursor = cnx.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        cnx.close()
    # data = cursor.fetchall()
    # for row in data:
    #     print(row)
    # else:
        # print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print("Database 'alx_book_store' created successfully!", e)





