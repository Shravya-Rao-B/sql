/* Fetches records present in both joined tables */

/* Inner Join Syntax */

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

/* Inner join example */
/* Select details of customers who placed orders */

SELECT 
FROM Orders O
INNER JOIN Customers c
ON c.customer_id = O.customer_id;

/* We can also join more than one table */
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
