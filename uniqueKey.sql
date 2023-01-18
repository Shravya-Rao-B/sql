/* Unique key is a value that will always remain unqie
Duplicate values will not be allowed.
NULL values are allowed in a column which has unique key constraint
There can be many Unique keys in a table
*/

/* unique key example  */
CREATE TABLE Persons (
    ID int ,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);