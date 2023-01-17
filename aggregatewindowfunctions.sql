/* Can aggregate function be used as window function ?
It can be.By using Over() clause
As mentioned earlier, aggregate window functions work the same way as normal aggregate functions
rather than providing a consolidated output, the output is reflected on each row in the table. 
For example, the AVG() window function does exactly what you’d expect, it creates an average of the values in the given partition 
and outputs this value onto each row of the data.
*/

/* aggregate window function example 
The new column ‘average’, partitioned by genre, displays the average of each genre’s gross box office earnings. 
*/

SELECT title, genre, total_gross, 
ROUND(AVG(total_gross) OVER(PARTITION BY genre),0) as average 
FROM disney
WHERE release_date >= '2015-01-01' AND release_date < '2016-01-01'

title	      genere	          total_gross	    averge	
Avengers      Action            459005868        319604016
Ant-Man       Action            180202163        319604016
TomorrowLand  Adventure         936667899        304467899
InsideOut     Adventure         189908765        304467899
.
.
.

/* aggregate window function example for all agg functions */
SELECT title, genre, total_gross, 
ROUND(AVG(total_gross) OVER(PARTITION BY genre),0) as average,
ROUND(COUNT(*) OVER(PARTITION BY genre),0) as total_count,
ROUND(MAX(total_gross) OVER(PARTITION BY genre),0) as max_gross,
ROUND(MIN(total_gross) OVER(PARTITION BY genre),0) as min_gross,
ROUND(SUM(total_gross) OVER(PARTITION BY genre),0) as total_sum
FROM disney
WHERE release_date >= '2015-01-01' AND release_date < '2016-01-01'

