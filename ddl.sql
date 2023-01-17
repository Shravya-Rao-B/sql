/* Data Definition Language
Changes the structure of the table
Create, Alter, Truncate, Drop
 */

/* Create Syntax */
CREATE table table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
) 
/* Example */
CREATE table Person (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    gender varchar(255),
    Addressline varchar(255),
    City varchar(255)
);

/* Alter Syntax */

ALTER table table_name
action column_name datatype;

/* Example */

ALTER table Person
ADD Age int;

ALTER table Person
DROP column  City ;

/* To change the datatype of a column */
ALTER table Person
MODIFY column  PersonID varchar;

/* Trucate */
TRUNCATE table Person;

/* Drop table */
DROP table Person;

