--> emp table 
e_id  | e_name  | address    |
1     | Ravi    | Chandigarh |
2     | Varun   | Delhi      |
3     | Nitin   | Pune       | 
4     | Robin   | Banglore   |
5     | Ammy    | Chandigarh |

--> project table 
e_id  | p_id  | p_name   | location |
1     | p1    | IOT      | Banglore |
5     | p2    | BIG DATA | Delhi    |
3     | p3    | Retail   | Mumbai   |
4     | p4    | Android  | Hyderabad|

--> Detail of emp whose addres is either delhi or pune or chandigarh

Select * from emp where address in ('Delhi','Chandigarh','Pune');

--> Find the name of the emp's who are working on a project

Select e_name from emp where e_id in (Select distict (e_id) from project)

--> output 
Ravi
Nitin
Robin
Ammy

--> use distinct if some emp is working on more than 1 project 



