--> emp table 
e_id  | e_name | dept | salary |
1     | Ram    | HR   | 10,000 |
2     | Amrit  | MRKT | 20,000 |
3     | Ravi   | HR   | 30,000 |
4     | Nitin  | MRKT | 40,000 |
5     | Varun  | IT   | 50,000 |
6     | Sandy  | Test | Null   |

1) Select Max(salary) from emp;

--> output --> 50,000

2) Select Min(salary) from emp;

--> output --> 10,000

3) Select count(*) from emp;

--> output --> 6

4) Select count(salary) from emp;

--> output --> 5

5) Select distict(count(salary)) from emp;

--> output --> 4

6) Select sum (salary) from emp;

--> output --> 1,40,000

7) Select distinct (sum(salary)) from emp;

--> output --> 1,10,000

8) Select Avg (salary) from emp;

--> output --> 28,000