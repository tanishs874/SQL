DIFFRENCE BETWEEN CHAR AND VARCHAR--> 

suppose we have a student table in which we have a column name--> 

now if we use name char(50);
--> here if a person has name Tanish then 6 length of size is used here and rest of the size is not used so, it is wasted as it will take space of 50 size.
--> So, we use varchar(50) , because varchar uses only that size which the user has given like i have given name "tanish" so, it will use size of 6 only.


SIGNED AND UNSIGNED -->

TINYINT UNSIGNED(0 TO 255)
TINYINT (-128 TO 127)

LOOK , here tinyint has range from -128 to 127, but if we have database of age here or any other data column like salary in which we surely know that the it cannot be negative so, then we use unsigned here by using unsigned  the range of tinyint from -128 t0 127 will change to 0 to 255 and only the positive numbers will be stored ..


--> DATABASE RELATED QUERIES

CREATE DATABASE COLLEGE;// it will create database name college
CREATE DATABASE IF NOT EXISTS COLLEGE;// it will only create database named college only if it does not exists.

DROP DATABASE IF EXISTS COMPANY;// it will only drop the database company only if it exists 

IF EXISTS AND IF NOT EXISTS -->  they are used in order to not have errors in our code --> they only show us the warnings rather than showing the errrors

USE COLLEGE;

CREATE TABLE STUDENT(
   ID INT PRIMARY KEY,
   NAME VARCHAR(50),
   AGE INT NOT NULL
);

INSERT INTO STUDENT VALUES(1,"TANISH",21);// here the values are inserted into columns
INSERT INTO STUDENT VALUES(2,"PALAK",21);// here the values are inserted into columns
or we can use insert like -->
INSERT INTO STUDENT (ID,NAME,AGE) VALUES (1,"TANISH",21);
INSERT INTO STUDENT (ID,NAME,AGE) VALUES (2,"PALAK",21);

SELECT * FROM STUDENT;

SHOW DATABASES; // It will show us all the databases we have created 
SHOW TABLES; // It will show us all the tables we have created 


CREATE DATABASE COLLEGE;
USE COLLEGE;

CREATE TABLE STUDENT
(
   ROLLNO INT PRIMARY KEY,
   NAME VARCHAR(50),
   MARKS INT NOT NULL,
   GRADE VARCHAR(1),
   CITY VARCHAR(20)
);

INSERT INTO STUDENT(ROLLNO,NAME,MARKS,GRADE,CITY) VALUES
(101,"ANIL",78,"C","PUNE"),
(102,"BHUMIKA",93,"A","MUMBAI"),
(103,"CHETAN",85,"B","MUMBAI"),
(104,"DHRUV",96,"A","DELHI"),
(105,"EMANUEL",12,"F","DELHI"),
(106,"FARAH",82,"B","DELHI");

SELECT NAME,MARKS FROM STUDENT;// IT WILL GIVE ONLY 2 COLUMNS NAME AND MARKS
SELECT * FROM STUDENT;// IT WILL PROVIDE US ALL THE COLUMNS THAT ARE AVAILABLE IN THE TABLE
SELECT DISTINCT CITY FROM STUDENT;// HERE ONLY DISTINCT VALUES WILL BE SHOWN AND THE VALUES WHICH ARE MORE THAN ONCE WILL BE SHOWN ONLY 1 TIME AND NOT MORE THAN THAT

WHERE CLAUSE-->

SELECT * FROM STUDENT WHERE MARKS > 80;// it will show only those students info whose marks are greater than 80
SELECT * FROM STUDENT WHERE CITY = "DELHI";// it will show only those students info whose city is delhi


SELECT * FROM STUDENT WHERE MARKS>80 AND CITY = "DELHI";//AND (to check for both conditions to be true)
SELECT * FROM STUDENT WHERE MARKS>90 OR CITY = "DELHI";// OR (to check for one of the conditions to be true)

SELECT * FROM STUDENT WHERE MARKS BETWEEN 80 AND 90;// show us the info of students whose makrs are between 80 and 90.
SELECT * FROM STUDENT WHERE CITY IN ("DELHI","MUMBAI");// show us the info of students whose city is delhi or mumbai
SELECT * FROM STUDENT WHERE CITY NOT IN ("DELHI","MUMBAI");// show us the info of students whose city is not delhi or Mumbai



SELECT * FROM STUDENT LIMIT 3;// IT will show only first 3 values of the rows 



ORDER BY -->

SELECT * FROM STUDENT ORDER BY MARKS ASC;// the data will be in ascending order of marks scored by student 
SELECT * FROM STUDENT ORDER BY MARKS DESC;// the data will be in descending order of marks scored by student


Aggregate functions perform a calculation on a set of values, and return a single value.

COUNT( )
MAX( )
MIN( )
SUM( )
AVG( )

SELECT MAX(MARKS) FROM STUDENT;// SHOWS THE MAX MARKS 
SELECT AVG(MARKS) FROM STUDENT;//SHOWS THE AVERAGE MARKS

Write a query to find avg marks of each city in ascending order 

SELECT CITY, AVG(MARKS) FROM STUDENT GROUP BY CITY ORDER BY CITY ASC;

PAYMENT TABLE -->
customer_id   | customer    |  mode        |   city     |
1             | A           | netbanking   | Portland   |
2             | B           | credit card  | Miami      |
3             | C           | credit card  | seattle    |
4             | D           | netbanking   | denver     |
5             | E           | credit card  | new orleans|
6             | F           | debit card   | minneapolis|
7             | G           | debit card   | phoenix    |
8             | H           | netbanking   | boston     |
9             | I           | netbanking   | Nashville  |
10            | J           | credit card  | boston     |

--> for the given table find the total payment according to each payment method.

SELECT MODE , COUNT(*) FROM PAYMENT GROUP BY MODE;


--> HAVING CLAUSE --> SIMILAR TO WHERE CLAUSE 

--> WHERE CLAUSE IS USED TO APPLY ON THE ROWS

--> HAVING CLAUSE IS USED TO APPLY ON GROUPS 

Similar to Where i.e. applies some condition on rows.
Used when we want to apply any condition after grouping.

Count number of students in each city where max marks cross 90.

SELECT CITY , COUNT(*) FROM STUDENT GROUP BY CITY HAVING MAX(MARKS) > 90;

GENERAL ORDER 

SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC;

SELECT CITY FROM STUDENT WHERE GRADE = "A" GROUP BY CITY HAVING MAX(MARKS)>=93 ORDER BY CITY DESC;

--> UPDATE COMMAND 

UPDATE STUDENT SET GRADE = "O" WHERE GRADE = "A";
SET SQL_SAFE_UPDATES=0;//--> IT WILL REMOVE THE SAFE MODE 
SELECT * FROM STUDENT;


--> Delete (to delete existing rows)

DELETE FROM table_name
WHERE condition;

DELETE FROM STUDENT WHERE MARKS < 33;
SELECT * FROM STUDENT;


JOINS IN SQL 

CREATE DATABASE JOINS;
USE JOINS;

CREATE TABLE STUDNT
 (
     STUDENT_ID INT PRIMARY KEY,
     NAME VARCHAR(20)
 );
 
INSERT INTO STUDNT (STUDENT_ID,NAME) VALUES
(101,"ADAM"),
(102,"BOB"),
(103,"CASEY");
 
SELECT * FROM STUDNT;

CREATE TABLE COURSE
(
   STUDENT_ID INT PRIMARY KEY,
   COURSE VARCHAR(10)
);

INSERT INTO COURSE VALUES
(102,"ENGLISH"),
(105,"MATH"),
(103,"SCIENCE"),
(107,"CSCIENCE");

SELECT * FROM STUDNT;
SELECT * FROM COURSE;


INNER JOIN --> 
SELECT * FROM STUDNT
INNER JOIN COURSE 
ON STUDNT.STUDENT_ID = COURSE.STUDENT_ID;


LEFT JOIN --> 
SELECT * FROM STUDNT AS S
LEFT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID;


RIGHT JOIN --> 
SELECT * FROM STUDNT AS S
RIGHT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID;


FULL JOIN --> 
SELECT * FROM STUDNT AS A
LEFT JOIN COURSE AS B
ON A.STUDENT_ID = B.STUDENT_ID
UNION
SELECT * FROM STUDNT AS S
RIGHT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID;


LEFT EXCLUSIVE JOIN --> 
SELECT * FROM STUDNT AS S
LEFT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID
WHERE C.STUDENT_ID IS NULL;


RIGHT EXCLUSIVE JOIN--> 
SELECT * FROM STUDNT AS S
RIGHT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID
WHERE S.STUDENT_ID IS NULL;


