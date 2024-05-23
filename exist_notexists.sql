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

--> Find the detail of the employee  who is working on at least one project

Select * from emp where exists(Select e_id from project where emp.e_id = project.e_id);

--> output --> 
1  | Ravi  | Chandigarh |
3  | Nitin | Pune       |
4  | Robin | Banglore   |
5  | Ammy  | Chandigarh |

--> this is top to bottom approach 
--> Inner query will be checked again and again 

