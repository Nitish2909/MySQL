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

 <b>UPDATE or Modify data from a table:</b>
<br><br>
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
 <b>To add a new column in an existing table</b>
<br><br>
 Syntax:

 ```bash
   ALTER TABLE table_name
   ADD column_name data_type;

```

Example:

```bash

ALTER TABLE students
ADD Email VARCHAR(100);

```

<b>Delete data from a table:</b>

Example

```bash

 DELETE FROM students
 where id=104;

 ```
<b>Delete a whole table from database:</b>

```bash

DROP TABLE table_name;

```

# DataTypes in MySQL:
In MySQL, data types define what kind of data a column can store.
<br>
They are mainly grouped into three categories: Numeric, Date & Time, and String/Text types.
<br><br>
<b>1. Numeric Data types:</b>

```bash

| Data Type                  | Description                          | Example             |
| -------------------------- | ------------------------------------ | ------------------- |
|  INT  /  INTEGER           | Whole numbers (±2 billion)           | 25, -100            |
|  TINYINT                   | Very small integer (-128 to 127)     | 1                   |
|  SMALLINT                  | Small integer (-32,768 to 32,767)    | 500                 |
|  MEDIUMINT                 | Medium-sized integer                 | 50000               |
|  BIGINT                    | Very large integer                   | 9223372036854775807 |
|  DECIMAL(m,d)  /  NUMERIC  | Fixed-point numbers (good for money) | 10.50               |
|  FLOAT                     | Approximate single-precision number  | 3.14                |
|  DOUBLE   /  REAL          | Approximate double-precision number  | 19.99               |

```
<b>2. Date and Time Data Types:</b>

```bash
| Data Type   | Description                                  | Example               |
| ----------- | -------------------------------------------- | --------------------- |
|  DATE       | Date (YYYY-MM-DD)                            |  2025-08-13           |
|  DATETIME   | Date and time                                |  2025-08-13 14:30:00  |
|  TIMESTAMP  | Date and time (auto-update on change if set) |  2025-08-13 14:30:00  |
|  TIME       | Time only                                    |  14:30:00             |
|  YEAR       | Year only                                    |  2025                 |

```

<b>3. String / Text Data Types:</b>

```bash
| Data Type    | Description                                   | Example                          |
| ------------ | --------------------------------------------- | -------------------------------- |
|  CHAR(n)     | Fixed-length string (padded if shorter)       |  'A' ,  'Yes '                   |
|  VARCHAR(n)  | Variable-length string (max 65535 characters) |  'Nitish'                        |
|  TEXT        | Large text (up to 65,535 characters)          |  'Long paragraph here...'        |
|  TINYTEXT    | Small text (up to 255 characters)             |  'Short note'                    |
|  MEDIUMTEXT  | Medium text (up to 16 million characters)     |  'Article...'                    |
|  LONGTEXT    | Very large text (up to 4 billion characters)  |  'Book...'                       |
|  BLOB        | Binary data (images, files)                   | —                                |
|  ENUM        | A list of predefined values                   |  'small' ,  'medium' ,  'large'  |
|  SET         | Multiple predefined values allowed            |  'a,b,c'                         |

```

#  Primary Key:
A Primary Key (PK) is a column (or set of columns) in a database table that uniquely identifies each row.
Think of it like a roll number in a school where no two students can have the same roll number, and it cannot be empty.
<br><br>

<b>Features of Primary Key:</b>
<br>
1. Unique —> No two rows can have the same primary key value.
<br>
2. Not NULL —> Every row must have a value for the primary key.
<br>
3. One per table —> A table can only have one primary key.
<br>
4. Immutable —>  Ideally, it should not change over time.
<br>

Example:

```bash
CREATE TABLE employees(id INT PRIMARY KEY,name VARCHAR(50),age INT);

 INSERT INTO employees(id,name,age)
 VALUES
 (101,"Rohit Sharma" ,38),(102,"Virat Kumar",37),(103,"Rakesh Kumar",35);

 ```

 # AUTO_INCREMENT:
AUTO_INCREMENT is a feature in databases that automatically generates a unique number for a column whenever a new row is inserted.
<br>
Its commonly used with primary keys so you don't have to manually assign IDs.
<br>

Example:

```bash

 CREATE TABLE employee1(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50),age INT);

 INSERT INTO employees(name,age)
 VALUES
 ("Rohit Sharma" ,38),("Virat Kumar",37),("Rakesh Kumar",35);

 ```

 # WHERE clause:
 In MySQL, the WHERE clause is used to filter rows in a query so you only get the results that match specific conditions.
<br>
syntax:

```bash
SELECT column1, column2
FROM table_name
WHERE condition;

```

Example:

```bash
 SELECT *
FROM employee1
WHERE age=38;

```
QUESTION:

```bash
create database -> bank_db
create table -> employees
emp_id , name , designation, dept 

emp_id  columns should not allows  duplicate and null values.

value of emp_id should auto increment.

name columns should not  null values.

designation column should hava default value as 'Probation'. 

```

SOLUTION:

```bash
 CREATE DATABASE bank_db;

 CREATE TABLE employees(ID INT PRIMARY KEY AUTO_INCREMENT,NAME VARCHAR(50) NOT NULL , DESIGNATION VARCHAR(50) DEFAULT 'Probation' ,DEPT VARCHAR(50));

 INSERT INTO employees(NAME,DEPT)
 VALUES
 ("Rohan" ,'cards dept'),("Rohit",'accounts');

 SELECT * FROM employees;


 Table:

 +----+-------+-------------+------------+
| ID | NAME  | DESIGNATION | DEPT       |
+----+-------+-------------+------------+
|  1 | Rohan | Probation   | cards dept |
|  2 | Rohit | Probation   | accounts   |

 ```





























