/* Delete - DML statement. Deletes data based on condition in the where caluse, needs to be committed after.
Trncate - DDL. Deletes all data. Cannot be rolled back, uses no where condition
*/

/* Deletes one record */
DELETE FROM Person
where PersonID=12345;

/* Deletion will reflect only after commit*/
COMMIT;

/* Deletes all data of table Person */
TRUNCATE TABLE Person;
