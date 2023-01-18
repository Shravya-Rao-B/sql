/* Synonyms are alias or an alternate name that you can provide to any database objects such as tables, views, 
sequences, procedures etc.  
It provides a layer of abstraction and protects the client application in case of a name change 
or location change made to the base object.
The new synonym is created under the Synonym folder of the table's database
*/

/* Synonym syntax */
CREATE SYNONYM [schema_name.] synonym_name FOR object;

/* Synonym example */
/* Here Emp is the synonym name and Employee is the database table for which a synonym is created. 
The new synonym is created under the Synonym folder of the table's database
*/
CREATE SYNONYM Emp FOR dbo.Employee;  

/* This insert query will work */
INSERT INTO Emp
values('Amit', 'Saha', 'AH23@abc.com', '22545678',  '10/03/2017',  2, 67000, 20);

/* Employee table will now have value for Amit */
SELECT * FROM Employee;


