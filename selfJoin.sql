/* Self join is an Inner join of the table with table itself.
Buisiness case could be in an employee table find the employess who are also managers.
*/

/* Sample Employees table */

Id	FullName	    Salary	    ManagerId
1	John Smith	    10000	        3
2	Jane Anderson	12000	        3
3	Tom Lanon	    15000	        4
4	Anne Connor	    20000	
5	Jeremy York	    9000	        1

/*
The manager of the employee John Smith is the employee with Id 3, i.e., Tom Lanon.
The manager of the employee Jane Anderson is the employee with Id 3, i.e., Tom Lanon.
The manager of the employee Tom Lanon is the employee with Id 4, i.e., Anne Connor.
The employee Anne Connor does not have a manager; her ManagerId is null.
The manager of the employee Jeremy York is the employee with Id 1, i.e., John Smith.
*/

/* SQL to achieve this task */
SELECT
employee.Id,
employee.FullName,
employee.ManagerId,
manager.FullName as ManagerName
FROM Employees employee
JOIN Employees manager
ON employee.ManagerId = manager.Id;

/* Result */
/* Inner join returns records only when matched. Hence Anne Connor row is not returned */

Id	FullName	ManagerId	ManagerName
1	John Smith	    3	    Tom Lanon
2	Jane Anderson	3	    Tom Lanon
3	Tom Lanon	    4	    Anne Connor
5	Jeremy York	    1	    John Smith


-----------------Example 2 -----------------------------------

/* Assign parent category for each category below in Category table */

Id	Quantity	Category	ParentCategoryId
1	60	        Food	
2	50	        Fruit	        1
3	40	        Apple	        2
4	20	        Granny Smith	3
5	100	        Milk	        1
6	60	        Soy Milk	    5
7	40	        Cow Milk	    5
8	30	        Whole Milk	    7
9	10	        Fat-Free Milk	7


SELECT cat.Id, cat.quantity, cat.Category, cat.ParentCategoryId, parent.Category  as parentCategory
FROM Category cat
JOIN Category as Parent
ON  cat.ParentCategoryId = Parent.Id;