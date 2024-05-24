--> Alter --> Alter is a Data definition language
--> Alter will work on the structure of data

--> Update --> Update is a Data Manipulation language
--> Update will work on the data

--> emp table
id | Name | Salary |
1  | A    | 1000   |
2  | B    | 2000   |
3  | C    | 3000   |

--> Lets say we want to update the salary.So, we will use update command for that

update emp set salary = salary * 2;

--> emp table
id | Name | Salary |
1  | A    | 2000   |
2  | B    | 4000   |
3  | C    | 6000   |

--> Let's say we want to increase the salary of person A only 

update emp set salary = salary * 2 where id = 1;

--> emp table
id | Name | Salary |
1  | A    | 4000   |
2  | B    | 4000   |
3  | C    | 6000   |




