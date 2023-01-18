/* Virtual table as views
But the result of the query is stored in a table or disk
materialized views are also called as "indexed views" because the table created after the query is indexed and 
can be accessed faster and efficiently.
Materialised views can be configured to refresh its contents periodically or can be manually refreshed when needed.
This is used when the data of the query gets frequently accessed
Views are generally used when data is to be accessed infrequently and data in table get updated on frequent basis.	
Creating materialized views can be a very good approach for performance tuning especially when dealing with remote tables.

