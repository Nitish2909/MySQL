# SQL:
SQL stands for Structured Query Language.It's the standard language that is used to communicate with  the databases.
It is not case sensitive(means you can write commands in both upper case and lower case).

# What is databases:
A database is an organized collection of data that can be stored, managed, and retrieved efficiently.
<br>
<b>There are some important point about Database:</b>
Stores information —> such as customer details, product inventory, bank transactions, etc.
<br>
Organized —>Data is arranged in a structured way (means data are arranged in table in rows and columns form) so it’s easy to search and update.
<br>
Managed by software —> A Database Management System (DBMS) like MySQL, Oracle, or MongoDB controls access and operations.
<br>
Efficient retrieval — >You can quickly search, filter, and analyze large amounts of data.
<br>
Secure — Databases can protect data with passwords, permissions, and encryption.
<br>
Example:
<br>
In an online shopping site:

```bash
One table may store user details (name, email, password).

Another table may store product details (ID, name, price).

Another table may store orders (order ID, user ID, product ID, date).

```

# What is MySQL:
MySQL is a Database Management System (DBMS) that uses SQL(Structured Query Language) to store, manage, and retrieve data.

```bash
You can think of it this way:

SQL ->The language (like English for talking to the database)

MySQL -> The software that understands SQL and actually stores the data.

```
 
# Basics commands:

```bash
//To check the list of existing database:

SHOW DATABASES;

//clear your terminal

system clear;

//To create a new  database

CREATE DATABASE database_name;

//Working with a database

USE database_name;

//how to check currently in which database you Working?

select database();

//deleting a database

DROP DATABASE database_name;

// check your Table 

describe or desc table_name;

```

# Create a New Table in Database:

```bash

CREATE TABLE students(Id INT , FirstName VARCHAR(80) , LastName VARCHAR(80) Class INT);

//Add data into table

 INSERT INTO students(Id,FirstName,LastName,Class)
 VALUES
 (101,"RAKESH","KUMAR",12),(102,"VIRAT","KUMAR",12);

 //Reading a data from table 

SELECT * FROM students;  //it show all the data of students Table 

SELECT FirstName FROM students; //It show only the FirstName column data

SELECT * FROM students WHERE Id=102; //It show only this id student from students table

```

 <b>update or modify data from a table:</b>
<br>
 syntax:

 ``` bash

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

```
Example:

```bash

 UPDATE students
 SET class=8
 WHERE FirstName="RAKESH";

 ```

























