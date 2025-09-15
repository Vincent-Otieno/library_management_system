# 📚 Library Database Schema

This project defines a relational database schema for managing a library system. It includes tables for librarians, students, books, and borrowing records.

## 🏗️ Database Setup

To create and initialize the database, run the following SQL commands:

```sql
CREATE DATABASE librarydb;
USE librarydb;
```

## 📋 Tables Overview

### 1. `librarian`
Stores information about library staff.

- `librarian_id` (INT, Primary Key, Auto Increment)
- `librarian_name` (VARCHAR(50), Not Null)
- `email` (VARCHAR(70), Unique)
- `phone` (VARCHAR(20), Unique)

### 2. `student`
Stores student details.

- `student_id` (INT, Primary Key, Auto Increment)
- `student_name` (VARCHAR(50), Not Null)
- `email` (VARCHAR(70), Unique)
- `course` (VARCHAR(50))

### 3. `books`
Stores book inventory.

- `book_id` (INT, Primary Key, Auto Increment)
- `title` (VARCHAR(50), Not Null)
- `author` (VARCHAR(50))
- `copies_available` (INT, Not Null)

### 4. `borrow`
Tracks borrowing activity.

- `borrow_id` (INT, Primary Key, Auto Increment)
- `student_id` (INT, Foreign Key → `student.student_id`)
- `book_id` (INT, Foreign Key → `books.book_id`)
- `librarian_id` (INT, Foreign Key → `librarian.librarian_id`)
- `borrow_date` (DATE, Not Null)
- `return_date` (DATE)

## 🔗 Relationships

- Each borrow record links a student, a book, and a librarian.
- Foreign keys ensure referential integrity across the system.

## 🚀 Usage

This schema can be used to build applications for:
- Tracking book loans
- Managing student and librarian records
- Monitoring book availability
