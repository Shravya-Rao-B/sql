/* Max aggregator function
Calculates the maximum vlaue in a result set of a specified column
*/

/* Max Syntax */

SELECT MIN(column) as column_min FROM table_name;

/* Max example 
maximum salary for each department in the employee table
*/
SELECT dept_id, max(salary) as max_salary_per_dept 
FROM employee 
GROUP BY dept_id;