/* left join selects all the items from the table written on left side of the query 
and the items that matched in the right table 

*/

/* left join Syntax */
SELECT column(s)
FROM table_name1 
LEFT JOIN table_name2 
ON table1.column_name = table2.column_name;

/* left join example */
/* In case of requiring all customer details, with their order status */

SELECT customer_name, customer_id, order_id
FROM customer
LEFT JOIN orders
ON customer.customer_id = orders.customer_id;

/* If the customer has not ordered NULL will be returned in the place of Order ID */
customer_name  customer_id  order_id
Shravya          1            22
Shruthi          14           NULL
Anup             22            13
Navaneeth        43            1

