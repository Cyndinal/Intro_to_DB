CREATE DATABASE IF NOT EXISTS alx_book_store;






CREATE TABLE authors(
                        author_id INT ,
                        PRIMARY KEY (author_id),
                        author_name VARCHAR(215)
);


CREATE TABLE books(
                      book_id INT PRIMARY KEY,
                      title VARCHAR(130),
                      author_id INT ,
                      FOREIGN KEY (author_id) REFERENCES Authors(author_id),
                      price DOUBLE,
                      publication_date DATE
);

CREATE TABLE  customers(
                           customer_id INT PRIMARY KEY ,
                           customer_name VARCHAR(215),
                           email VARCHAR(215),
                           address TEXT

);

CREATE TABLE orders(
                       order_id INT PRIMARY KEY ,
                       customer_id INT ,
                       FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
                       order_date DATE
);


CREATE TABLE Order_Details(
                              orderdetailid INT PRIMARY KEY,
                              order_id INT ,
                              FOREIGN KEY (order_id) REFERENCES Orders(order_id),
                              book_id INT,
                              FOREIGN KEY (book_id) REFERENCES Books(book_id),
                              quantity DOUBLE
);
