/* Union
combines result of two or more SELECT  queries
Duplicate rows will be discared
columns in both queries must be same and in same order
Datatypes of  columns in both queries must be the same
*/

/* Union Syntax */

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

/* Union All
Selects duplicate rows as well
*/
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

/* Union example */

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
-----------------------------------------------------------------

/* Example of renaming and skipping the unrequired columns in the result set */
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers

/* Output of the above query */
Type	ContactName	City	Country
Customer	Alejandra Camino	Madrid	Spain
Customer	Alexander Feuer	Leipzig	Germany
Customer	Ana Trujillo	México D.F.	Mexico
	