/* Foreign key references to primary krys of another table
The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
The table with the foreign key is called the child table, and 
the table with the primary key is called the referenced or parent table.
*/

/* foreign key example */
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

/* Alter a foreign key for a table */
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

/* Dropping a foreign key */
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;