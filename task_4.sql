CREATE DATABASE IF NOT EXISTS alx_book_store;



USE alx_book_store;
SELECT
      book_id,
      title ,
      author_id  ,
      price ,
      publication_date
FROM
    alx_book_store.books
WHERE
    TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'books';