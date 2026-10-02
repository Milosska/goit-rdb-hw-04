# Task 1
CREATE SCHEMA LibraryManagement;

use LibraryManagement;

CREATE TABLE authors (
author_id INT auto_increment PRIMARY KEY,
author_name VARCHAR(150)
);

CREATE TABLE genres (
genre_id INT auto_increment PRIMARY KEY,
genre_name VARCHAR(150)
);

CREATE TABLE books (
book_id INT auto_increment PRIMARY KEY,
title VARCHAR(200),
publication_year YEAR,
author_id INT,
genre_id INT,
FOREIGN KEY (author_id) REFERENCES authors(author_id),
FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE users (
user_id INT auto_increment PRIMARY KEY,
username VARCHAR(150),
email VARCHAR(100)
);

CREATE TABLE borrowed_books (
borrow_id INT auto_increment PRIMARY KEY,
book_id INT,
user_id INT,
borrow_date DATE,
return_date DATE,
FOREIGN KEY (book_id) REFERENCES books(book_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

