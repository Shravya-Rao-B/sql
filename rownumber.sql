/* Row number is a window function
assigns a unique number to each row within the partition
*/

/* comparison of rank, dense_rank, row_number */

select *, 
rank() over (partition by country order by age desc) rnk,
dense_rank() over (partition by country order by age desc) dense_rnk ,
row_number() over (partition by country order by age desc) row_num
from customers;

customer_id	first_name	last_name	age	country	rnk   dense_rnk    row_num
5	            Betty	Doe	        28	UAE	     1      1             1
4	            John	Reinhardt	25	UK	     1      1             1
3	            David	Robinson	22	UK	     2      2             2
6	            Shrav	Rao	        32	USA	     1      1             1
7	            Shru	Rao	        32	USA	     1      1             2
1	            John	Doe	        31	USA	     3      2             3
2	            Robert	Luna	    22	USA	     4      3             4