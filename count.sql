/* Count aggregator function
Counts the number of records or rows.
*/

/* Court syntax */
SELECT COUNT(column) as column_count FROM table_name;

/* Count example 
returns count of employees per department 
*/
SELECT dept_id, COUNT(emp_id) as no_of_emp_per_dept 
FROM employee 
GROUP BY dept_id;