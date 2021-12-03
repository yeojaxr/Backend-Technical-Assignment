CREATE DATABASE skilvulbookstore;

USE skilvulbookstore;

CREATE TABLE penerbit(
    id INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50),
    kota VARCHAR(50)
);

CREATE TABLE buku(
    id INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(50),
    judul VARCHAR(50),
    penulis VARCHAR(50),
    penerbit INTEGER(10),
    harga INTEGER(10),
    stock INTEGER(10)
);

INSERT INTO buku (id, ISBN, judul, penulis, penerbit, harga, stock) VALUES
    (1, 1234, 'belajar fisika', 'hendra', 'gramedia', 57000, 3)
    (2, 1235, 'belajar matematika', 'nining', 'gramedia', 58000, 3)
    (3, 1236, 'belajar menghitung', 'mahendra', 'gramedia', 59000, 3)
    (4, 1237, 'belajar kimia', 'yanto', 'gramedia', 60000, 3)
    (5, 1238, 'belajar biologi', 'kiki', 'gramedia', 61000, 3)
    (6, 1239, 'belajar geografi', 'galih', 'gramedia', 62000, 3)
    (7, 1240, 'belajar sejarah', 'hendra', 'gramedia', 63000, 3);

SELECT * FROM buku
INNER JOIN penerbit
ON buku.penerbit = penerbit.id;

SELECT * FROM buku
LEFT JOIN penerbit
ON buku.penerbit = penerbit.id;

SELECT * FROM buku
RIGHT JOIN penerbit
ON buku.penerbit = penerbit.id;

SELECT MAX(harga) FROM buku
WHERE stock <10;

SELECT MIN(harga) FROM buku;

SELECT COUNT(*) FROM buku
WHERE harga < 100000;



