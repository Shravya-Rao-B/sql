/* Dense_rank is a window function 
It ranks the rows based on partition and order.
If the reank duplicates, the next rank will NOT be skipped.
Thats the only difference between rank and dense_rank
*/

/* Dense_rank() example */

select *, dense_rank()
over (partition by country order by age desc) rnk from customers;

customer_id	first_name	last_name	age	country	rnk
5	            Betty	Doe	        28	UAE	     1
4	            John	Reinhardt	25	UK	     1
3	            David	Robinson	22	UK	     2
6	            Shrav	Rao	        32	USA	     1
7	            Shru	Rao	        32	USA	     1
1	            John	Doe	        31	USA	     2  /* Rank 2 is NOT skipped here unlike in rank() */
2	            Robert	Luna	    22	USA	     3   