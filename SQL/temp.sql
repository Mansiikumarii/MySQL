show DATABASES;
use temp;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(25)
);

INSERT INTO student VALUES(1,'Khushi');

SELECT * FROM student;

DROP DATABASE IF EXISTS temp;
CrEATE DATABASE temp;
use temp;
CREATE TABLE Customer(
    id INT PRIMARY KEY,
    name VARCHAR(25),
    Address VARCHAR(100),
    Gender VARCHAR(10),
    Pincode INT
);

ALTER TABLE Customer
ADD  City VARCHAR(15);

INSERT INTO customer
VALUES(1251,'Priyanshi','Ok elevator','F',302021,'Jaipur'),
(1300,'Priyanshi','Sanskar','F',302021,'Jaipur'),
(245,'Palak','Agra road','F',302021,'Jaipur'),
(210,'Himanshu','Jaipur','M',302022,'Mumbai'),
(500,'Abhishek','Delhi','M',110001,'Delhi');

INSERT INTO customer
VALUES(1252,'Kinjal','Kanpur','F',208001,'UP');
