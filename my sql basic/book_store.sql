SHOW DATABASES;

CREATE DATABASE bookstore;

USE DATABASE bookstore;

SHOW TABLES;

CREATE TABLE books(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(100),
    title VARCHAR(100),
    `description` VARCHAR(100),
    place_sell VARCHAR(3),
    stock INTEGER DEFAULT 0,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE books 
    ADD price INTEGER DEFAULT 0,
    ADD status ENUM ('available', 'out of stock', 'limited'),
        
    DROP COLUMN place_sell; 

INSERT INTO books (author1, title, stock) VALUES 
    ('ilana tan', 'summer in london', 5),
    ('tere liye', 'bumi', 8),
    ('orizuka', 'jatuh', 10);

SELECT * FROM books;

SELECT id as ID, author1 as A1, author2 as A2, author3 as A3 FROM books;

SELECT * FROM books WHERE id=2;

SELECT * FROM books WHERE id=1 AND author1='ilana tan';

SELECT * FROM books WHERE id=2 OR id=3;

SELECT * FROM books WHERE NOT id=2;

SELECT * FROM books ORDER BY id ASC;

SELECT * FROM books LIMIT 2;

UPDATE books
SET
    author1='hanin', price=56000
WHERE 
    id=3;

DELETE FROM books
WHERE id=2;
