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

 # MySQL String  Function:

 ```bash

 1. CONCAT() : Joins multiple strings

    SELECT ID, CONCAT(NAME,' ',LASTNAME) AS FULLNAME FROM employees;
 
    SELECT ID, CONCAT(NAME,' ',"KUMAR") AS NEWNAME FROM employees; 

 2. CONCAT_WS() :   Joins with a separator

    SELECT CONCAT_WS("-",ID,NAME,DEPT) FROM employees;

 3. SUBSTRING : Extract part of string.
    
    SELECT SUBSTRING('COMPUTER',1,3);

 4. REPLACE: Replace text
   
   Syntax:
  REPLACE(str, from, to)

  EXAMPLE:
  SELECT REPLACE('hii EveryOne','hii','Hello');

 5. REVERSE : Reverse string.
  Syntax:
  REVERSE(str)

   Example:
   REVERSE('abc');
   cba
  
 6.  UPPER/UCASE : Convert to uppercase.
    Syntax:
     UPPER(str)

    Example:
    UPPER('hello')
     HELLO

 7. LOWER/LCASE :Convert to lowercase.
    Syntax:
    LOWER(str)
    Example:
   LOWER('HELLO')
   hello 

 8. CHAR_LENGTH : Returns length of characters.
   Syntax:
   CHAR_LENGTH(str)
   Example:
   CHAR_LENGTH('EVERYONE')
   8

 ```

# DISTINCT clause:
In SQL, DISTINCT is used to remove duplicate rows from the result set — it only returns unique values.

Syntax:
```bash

SELECT DISTINCT column1, column2, ...
FROM table_name;

```
Example:

```bash
SELECT DISTINCT city
FROM students;
 
//it only returns unique city from students table.

```

# ORDER BY clause :
In SQL, ORDER BY is used to sort the results of a query in either ascending (ASC) or descending (DESC) order.

Syntax:

```bash
SELECT column1, column2, ...
FROM table_name
ORDER BY column_name [ASC | DESC];


//ASC -> ascending order (smallest → largest, A → Z) → default

//DESC -> descending order (largest → smallest, Z → A)

````

Example:

```bash
SELECT name, age
FROM students
ORDER BY age ASC;
```

# LIKE clause:
In SQL, LIKE is used in a WHERE clause to search for a pattern in a column's value, often with wildcards.
<br>
There are two wildcards:
<br>
1. %  : Matches zero or more characters.
<br>
2. _  : Matches exactly one character.


syntax:

```bash
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;

```

Example:

```bash

1. SELECT name
   FROM students
   WHERE name LIKE 'Al%';   //Matches any name starting with Al.

2. SELECT name
   FROM students
   WHERE name LIKE '%sh';   //Matches any name ending with sh.

3. SELECT name
   FROM students
   WHERE name LIKE '%ni%';   //Matches any name containing ni.

4. SELECT name
   FROM students
   WHERE name LIKE 'Al_ce';  //Matches names where the _ is exactly one character.

 ```
 # LIMIT clause:
 LIMIT is used to restrict the number of rows returned in a query result.

 syntax:

 ```bash
 SELECT column1, column2, ...
 FROM table_name
 LIMIT number_of_rows;
 
 ```

 Example:

 ```bash
  1.
  SELECT *
  FROM students
  LIMIT 3;     //It returne first 3 rows

  2.
   SELECT *
   FROM students
   LIMIT 2 OFFSET 2;   //Skip first 2 rows, then return the next 2 rows.

  ``` 

  

           


 
 
   































