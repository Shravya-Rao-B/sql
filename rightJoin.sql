/* Right join returns all records from the right table and matching records from the left table
0 records are returned from the right table if nothing matches
we can see NULL in the returned data set in its place
*/

/* Right join syntax */
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

/* Right join example */

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

/* Why is right join required */
/* if you are using join in sql and join three tables in single query and with 2 tables using left join and you want all records of third table then you can't use left join with 3rd table, so you have to use right join with 3rd table.
 */