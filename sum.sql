/* Sum aggregator function
Calculates the sum of given values
*/

/* Sum syntax  */

SELECT SUM(column) as column_sum FROM table;

/* Sum example
Sum of salaries of each department in employee table
*/

SLEECT dept_id, sum(salary) as total_salary_per_dept
from employee
group by dept_id;