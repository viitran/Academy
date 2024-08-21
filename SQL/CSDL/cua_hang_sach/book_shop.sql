create database book_shop;

CREATE TABLE author (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    price DOUBLE,
    id_author INT,
    FOREIGN KEY (id_author)
        REFERENCES author (id)
);

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE employee_book (
    id_employee INT,
    FOREIGN KEY (id_employee)
        REFERENCES employee (id),
    id_book INT,
    FOREIGN KEY (id_book)
        REFERENCES book (id)
)