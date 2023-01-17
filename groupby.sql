/* Group by
This returns one row for the columns its grouped by
Has a having clause which specifies the condition
Usually an aggregator function (MIN, MAX, COUNT, SUM, AVG) will be used on the gouped set

*/
SELECT name, COUNT(1) FROM employee GROUP BY name;