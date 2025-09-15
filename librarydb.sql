-- create database library
CREATE DATABASE librarydb;
-- direct engine to use database librarydb
USE librarydb;

-- create table librarian
CREATE TABLE librarian(
librarian_id INT AUTO_INCREMENT PRIMARY KEY,
librarian_name VARCHAR(50) NOT NULL,
email VARCHAR(70) UNIQUE,
phone VARCHAR(20) UNIQUE
);

-- create table students
CREATE TABLE student(
student_id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(70) UNIQUE,
course VARCHAR(50)
);

-- create table books
CREATE TABLE books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
author VARCHAR(50),
copies_available INT NOT NULL
);

-- create table borrow
-- create table borrow
CREATE TABLE borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    librarian_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (librarian_id) REFERENCES librarian(librarian_id)
);


