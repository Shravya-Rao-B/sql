/* Full Join will return the records that match, and the records that don't match on both the joining tables.
*/

/* Full outer join syntax */
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

/* Full outer join example */
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

/* Sample result */
CustomerName	            OrderID
Null	                    10309       
Null	                    10310
Alfreds Futterkiste	         Null
Ana Trujillo                10308      /* where Ids matched */
Antonio             	     Null


