/* Transaction Control Language
commit - permanently saves any open transactions(INSERT, UPDATE, DELETE) in the current session to the database.
Rollback - Unsave any open transactions in the current session of the database. all un committed transactions in the current session will be lost
Savepoint - You can then either rollback or commit transactions only until this point (savepoint name)
*/

/* Commit Syntax*/
UPDATE TABLE Person
SET Addressline ="Sengkang"
WHERE PersonID=12345;
/* */
COMMIT;

/* Rollback syntax */
ROLLBACK;

/* Savepoint syntax */
SAVEPOINT pointer_name
/* Need to create a pointer after execution of significant manipulation */

/* Savepoint example */
INSERT INTO 
PERSON(PersonID,LastName,FirstName,Addressline,City) 
VALUES (12345, 'Rao', 'Shravya','Balmoral','Singapore');

/* To save the transaction with this newly inserted record, we will create a new savepoint.*/
/* first savepoint */
SAVEPOINT ins;

UPDATE TABLE Person
SET Addressline ="Sengkang"
WHERE PersonID=12345;

/* Second savepoint, saved till update */
SAVEPOINT upd;

DELETE FROM Person
WHERE PersonID=12344;

/* Third savepoint */
SAVEPOINT del;

/* If we now decide to keep this deleted record */
ROLLBACK TO upd;
/* This rollsback the data till update statement, so we will have a newly inserted person, updated address and person with ID 12344 */




