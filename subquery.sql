/* Sub query is a query inside a query
Could be in SELECT ,FROM or WHERE clauses
The inner query called subquery executes first
Outer query called main query executes after
*/

/* Subquery simple example */
SELECT * FROM continents ct
WHERE ct.continent_code IN (SELECT cr.continent_code FROM countries cr);

/* example 
Suppose you are given the  table showing company sales ,Calculate the cumulative percent of total sales on a given day.
*/
Table: sales_info

date	        sale_id	    sale_usd
2020-01-05	    1111	    93695
2020-01-07	    1112	    879617
2020-01-07	    1113	    752878

