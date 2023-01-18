/* View is a database object created out of a result of a query.
view is virtual
 It’s like giving a name to the results returned from a SQL Query and storing it in the database as a view.
 If the query result changes then the data in view also changes. 
 View is directly linked to the SQL Query over which it was created.
 The contents of view will get updated automatically when the underlying table (forming the query) data gets changed
*/

/* View syntax */
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

/* View example */
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

/* Querying a view */
SELECT * FROM [Brazil Customers];

/* Updating a view syntax */
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

/* Example */
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

/* Dropping view */
DROP VIEW view_name;
