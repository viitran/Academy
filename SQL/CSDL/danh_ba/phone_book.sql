create database phonebook;

CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE email (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255),
    id_people INT,
    FOREIGN KEY (id_people)
        REFERENCES people (id)
);

CREATE TABLE phone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(255),
    id_people INT,
    FOREIGN KEY (id_people)
        REFERENCES people (id)
);
