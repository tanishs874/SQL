Alter commands --> If we want to change anything in schema, then we use alter command

--> add column
--> remove column
--> modify datatype
--> modify datatype length
--> add constraints
--> remove constraints
--> rename columns/table


create table employee
(
    id int ,
    name varchar(10)
);

--> add address column in the table
alter table employee add address varchar(10);

desc employee;

--> remove or drop the address column from the table
alter table employee drop column address;
--> modify data type of id to varchar
alter table employee modify id varchar(20);
--> modify data type lenght of of id 
alter table employee modify id varchar(30);
--> rename column
alter table employee rename column id to rollno;
--> rename table employee to emp1
alter table employee rename to emp1;
--> now the table has been rename so we do not write desc employee --> we need to write desc emp1 because the table name has been changed to emp1
desc emp1;
--> add primary key in the table 
alter table emp1 add primary key (rollno);-->now the rollno has been primary key here 