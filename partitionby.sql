/* Partition by clause used the over clause specify column on which we need to perform aggregation
returns the same number of rows which group by would combine
If we have 15 records in the table, the query output SQL PARTITION BY also gets 15 rows
On the other hand, GROUP BY gives one row per group in result set
*/

/* Partitionby syntax */

/* Partitionby example */

Select * from user;

6 rows:
name number_of_registered_entities
User_1 | 8
User_2 | 10
User_3 | 8
User_2 | 1
User_3 | 5
User_1 | 7

# SQL query 1
GROUP BY:
SELECT name, SUM(number_of_registered_entities) entitysum from user
GROUP BY name

# Output 1 
3 rows:
name entitysum
User_1 | 15
User_2 | 11
User_3 | 13

# SQL query 2
PARTITION BY:
SELECT SUM(number_of_registered_entities) OVER (PARTITION BY name) AS name, entitysum FROM user

# Output 2
6 rows:
name entitysum
User_1 | 15
User_1 | 15
User_2 | 11
User_2 | 11
User_3 | 13
User_3 | 13

/* Compare the salary of each employee in department to the average salary of the department */

SELECT depname, empno, salary, avg(salary) OVER (PARTITION BY depname) FROM empsalary;

/* Output of the above query */

  depname  | empno | salary |          avg          
-----------+-------+--------+-----------------------
 develop   |    11 |   5200 | 5020.0000000000000000
 develop   |     7 |   4200 | 5020.0000000000000000
 develop   |     9 |   4500 | 5020.0000000000000000
 develop   |     8 |   6000 | 5020.0000000000000000
 develop   |    10 |   5200 | 5020.0000000000000000
 personnel |     5 |   3500 | 3700.0000000000000000
 personnel |     2 |   3900 | 3700.0000000000000000
 sales     |     3 |   4800 | 4866.6666666666666667
 sales     |     1 |   5000 | 4866.6666666666666667
 sales     |     4 |   4800 | 4866.6666666666666667