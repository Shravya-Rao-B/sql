/* Rank is a window function 
It ranks the rows based on partition and order.
If the reank duplicates, the next rank will be skipped.
*/

/* rank syntax */
SELECT column1 , column2, aggregator_function(column3) alias_name , column4, rank() 
OVER (partition by column2 order by column4 desc);

/* rank example */
SELECT depname, empno, salary, rank() 
OVER (PARTITION BY depname ORDER BY salary DESC) FROM empsalary;

/* Output of the above query */
  depname  | empno | salary | rank 
-----------+-------+--------+------
 develop   |     8 |   6000 |    1
 develop   |    10 |   5200 |    2
 develop   |    11 |   5200 |    2
 develop   |     9 |   4500 |    4          /* rank 3 is skipped as rank 2 repeated in the department of 'develop' */
 develop   |     7 |   4200 |    5
 personnel |     2 |   3900 |    1
 personnel |     5 |   3500 |    2
 sales     |     1 |   5000 |    1
 sales     |     4 |   4800 |    2
 sales     |     3 |   4800 |    2

 /* Example 2 */

 select *, rank()
over (partition by country order by age desc) rnk from customers;

customer_id	first_name	last_name	age	country	rnk
5	            Betty	Doe	        28	UAE	     1
4	            John	Reinhardt	25	UK	     1
3	            David	Robinson	22	UK	     2
6	            Shrav	Rao	        32	USA	     1
7	            Shru	Rao	        32	USA	     1
1	            John	Doe	        31	USA	     3  /* Rank 2 is skipped */
2	            Robert	Luna	    22	USA	     4   