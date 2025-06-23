CREATE DATABASE library_db;
USE library_db;

CREATE TABLE Authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  author_id INT,
  published_year YEAR,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
  member_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  phone_number VARCHAR(15)
);

CREATE TABLE Loans (
  loan_id INT PRIMARY KEY AUTO_INCREMENT,
  book_id INT,
  member_id INT,
  loan_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES Books(book_id),
  FOREIGN KEY (member_id) REFERENCES Members(member_id)
);


