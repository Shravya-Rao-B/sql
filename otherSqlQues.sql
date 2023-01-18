/* SQL online compiler for practice : https://www.programiz.com/sql/online-compiler/ */

/* SQL interview questions: https://techtfq.com/blog/top-20-sql-interview-questions */

/* Different database objects
Table, View, Constraints, Triggers, Indexes, Sequences, Usage lists

/* Difference between wehre and having clause

WHERE and GROUP BY clause then the records will first get filtered based on the conditions mentioned in WHERE clause 
before the data gets grouped as per the GROUP BY clause.
where first filters the records
After which group by will group these fileterd records
and condition in having clause applies to this grouped records

HAVING clause is used to filter records returned from the GROUP BY clause
*/

/* What are indexes
is a database object which is applied on one or more columns of a table. 
When a column (or list of columns) from the table is Indexed, database creates a pointer to each value stored in that column. 
This significantly improves the query execution time since the database will have a more efficient way to find a particular value 
from the column based on its index. 

Analogy: index of a book

useful read : https://stackoverflow.com/questions/1108/how-does-database-indexing-work
*/

/* How to improve performance of query
1. Check the SQL Query. 
-Make sure all the table joins are correct and all the filter conditions are applied as intended. 
-check for any cartesian joins that may happen unintentionally. 
-Avoid any repeated subqueries by using a WITH clause. 
-If using tables with huge list of columns then make sure to only fetch columns which are required for the current query.
-If required check the columns used in join conditions are similar to how index are created.

-2.heck if index is created for the desired columns.
-Make sure correct indexes are created on the desired columns. Following the correct type of indexes.
-Avoid creating unnecessary indexes.

3. Check if table statistics are upto date.
- Statistics will help the optimizer to have the upto date information about the table which in turn helps the 
optimiser to create the best possible explain plan.
- Check if statistics are generated for all the used tables..
- If there were some updates to table structure or data then its better to create statistics again.

4. Check the explain plan.
- When we execute a SQL Query, the first thing database does it to parse the query i.e. it will validate the query by looking for any syntax errors and also by checking the validity of the tables and its columns.
- The next thing that happens is that the database optimizer will generate an explain plan for the query. 
- Explain plan is something like a step by step guide on how the query execution will happen. 
- Explain plan will mention which index to use and what sort of joins to follow. So if the explain plan is not using a particular 
index from a huge table then this is a good indication why the query performance may be slow.
- You may then need to again follow the steps from the top to improve the written query.

/*  When can a function NOT be called from SELECT query?
If the function includes DML operations like INSERT, UPDATE, DELETE etc then it cannot be called from a SELECT query. 
Because SELECT statement cannot change the state of the database.
*/
