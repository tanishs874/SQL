--> difference between delete , drop and truncate command 

--> student table
id  | Name | city |
1   |  A   |  D   |
2   |  B   |  E   |
3   |  C   |  F   |

--> what will happen if we use delete command in the student table 

delete from student;
desc student;

--> Here all the rows of the table will be delted rest the schema of the table will remain same.

id  | Name | city |


--> What will happen if we use drop commmand in the student table 

drop table student;
desc student;

--> Here all the rows as well as the schema or structure of the table will be deleted

--> What will Happen if we use truncate command in the student table

truncate table student;
desc student;

--> Here all the rows of the table will be delted rest the schema of the table will remain same.

id  | Name | city |


--> Then what is the difference between delete and truncate?
--> The main difference between truncate and delete command is that truncate delete all the rows in one time only which means it 
--> will apply lock on all your rows than all the rows in that table will be deleted

--> On the other side delete deletes the rows one by one and not all the rows at once..

--> delete also has "where" function in which we can choose which row we wants to get deleted

--> student table
id  | Name | city |
1   |  A   |  D   |
2   |  B   |  E   |
3   |  C   |  F   |

--> Like we have student table here and here i want to delete the row in which id is 1

delete from student where id = 1;

--> Delete is slower than truncate 
--> rollback is not possible in truncate
--> but rollback is possible in delete
