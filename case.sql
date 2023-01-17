/* Q: Why do we use case statement
Ans: Similar to if else, to conditionally render or set data
*/

/* Case Syntax */
SELECT CASE WHEN column1 = value1 THEN val_1
            WHEN column1 = value2 THEN val_2
            WHEN column3 = value3 THEN val_3
            ELSE defaultVal
            END AS column_alias_name
FROM tableName ;


/* Case example */
SELECT CASE WHEN gender = 'M' then 'Male'
            WHEN gender = 'F' then 'Female'
            ELSE 'Other'
            END AS gender 
FROM Person;