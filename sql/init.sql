DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;


CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publication_year INT,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    sale_date DATE NOT NULL,
    quantity_sold INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Inserting sample authors
INSERT INTO authors (name) VALUES ('Author One');
INSERT INTO authors (name) VALUES ('Author Two');

-- Inserting sample books
INSERT INTO books (title, author_id, publication_year, price) VALUES ('Book A', 1, 2022, 9.99);
INSERT INTO books (title, author_id, publication_year, price) VALUES ('Book B', 2, 2021, 14.99);

-- Inserting sample sales
INSERT INTO sales (book_id, sale_date, quantity_sold) VALUES (1, '2022-05-01', 10);
INSERT INTO sales (book_id, sale_date, quantity_sold) VALUES (2, '2022-05-02', 5);
