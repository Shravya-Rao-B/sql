/* Primary key is a unique key of the table.
It will always have unique value.
It will not be duplicate.
It will not be null.
There will be only one primary key
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.
 
*/

/* Primary key on create syntax */
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
)

/* Primary key on alter table */
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

/* Multiple columns as primary key */
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

/* Dropping a primary key */
ALTER TABLE Persons
DROP PRIMARY KEY;
