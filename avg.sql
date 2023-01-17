/* Avg aggregator function
calculates the average 
*/

/* Avg syntax */
SELECT AVG(column) as column_avg FROM table;

/* Avg example 
 average salary for each department in the employee table
 */

 SELECT dept_id, AVG(salary)
 from employee
 GROUP BY dept_id;