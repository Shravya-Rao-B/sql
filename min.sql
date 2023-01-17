/* Min aggregator function
Calculates the minimum vlaue in a result set of a specified column
*/

/* Min Syntax */

SELECT MIN(column) as column_min FROM table_name;

/* Min example 
minimum salary for each department in the employee table
*/
SELECT dept_id, MIN(salary) as min_salary_per_dept 
FROM employee 
GROUP BY dept_id;

