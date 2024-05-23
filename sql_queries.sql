--> emp table 
e_id  | e_name | dept | salary |
1     | Ram    | HR   | 10,000 |
2     | Amrit  | MRKT | 20,000 |
3     | Ravi   | HR   | 30,000 |
4     | Nitin  | MRKT | 40,000 |
5     | Varun  | IT   | 50,000 |

1) --> Write a SQL query to display maximum salary from emp table 

Select Max(salary) from emp;
--> output->  50,000

2) --> Write a SQL query to display employee name who is taking Max salary

Select e_name from emp where salary = (Select Max(salary) from emp);
--> output --> Varun

3) --> Write a SQL query to display the second highest salary from the emp table 

Select Max(salary) from emp where salary <> Select Max(salary) from emp;  <>--> it stands for not equal to 
--> output --> 40,000

4) --> Write a SQL query to display the employee name who is taking second highest salary from the emp table

Select e_name from emp where salary = Select Max(salary) from emp where salary <> Select Max(salary) from emp;
--> output --> Nitin

-----------------------------------------------------------------------------------------------------------------

= --> It is used if we are comparing with 1 value only.
in --> It is used if we are comparing with multiple values.

5) --> Write a query to display all the dept name along with no. of employees working in that.

--> output should be like that -->
HR  | 2 |
MRKT| 2 |
IT  | 1 |

--> We will use group by here 

Select dept , count(dept) from emp group by dept;
             --> OR <--
Select dept , count(*) from emp group by dept;

--> output 
HR  | 2 |
MRKT| 2 |
IT  | 1 |

6) --> Write a query to display all the dept names where no. of employees are less than 2

Select dept from emp group by dept having count(*) < 2;

--> output --> IT 

7) --> Write a query to display the name of the employees where no of employees are less than 2.

Select e_name from emp where dept In (Select dept from emp group by dept having count(*) < 2);

--> output --> Varun

8) --> Write a query to display highest salary department wise and name of emp who is taking that salary ..

Select e_name from emp where salary In (Select Max(salary) from emp group by dept);


