/* Data Manipulation Language
Manipulates the data not the structure
Need to commit in order for the changes to reflect
Insert, Update, Delete
*/

/* Insert Syntax */
INSERT INTO table(column1, column2, column3,..) VALUES (value1, value2, value3, ...);

/* Insert Example */
INSERT INTO PERSON(PersonID,LastName,FirstName,gender, Addressline,City) VALUES (12345, 'Rao', 'Shravya','F','Balmoral','Singapore');

COMMIT;

/* Update Syntax */
UPDATE TABLE table_name
SET column1=value1, column2=value2
WHERE condition;

COMMIT;


/* Update Example */
UPDATE TABLE Person
SET Addressline ="Sengkang"
WHERE PersonID=12345;

COMMIT;

/* Delete Syntax */
DELETE FROM TABLE
WHERE condition;

/* Delete Example */
DELETE FROM Person
WHERE PersonID=12345;

COMMIT;

/* Merge */

