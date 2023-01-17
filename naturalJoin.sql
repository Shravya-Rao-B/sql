/* Natural join is inner join without ON clause 
we do not provide the columns to join on
the tables will be joind based on their common columns
So, for natural join, tables should have columns with common names and same datatypes
When we inner join, the retured data will have the order of columns from first table and columns from second
In Natural join columns joined on will be returned first, then will be columns from table 1 followed by table 2
*/

SELECT * FROM company;

COMPANY_ID COMPANY_NAME              COMPANY_CITY
---------- ------------------------- ---------------
18         Order All                 Boston
15         Jack Hill Ltd             London
16         Akas Foods                Delhi
17         Foodies.                  London
19         sip-n-Bite.               New York

SELECT * FROM foods;

ITEM_ID    ITEM_NAME                 ITEM_UNIT  COMPANY_ID
---------- ------------------------- ---------- ----------
1          Chex Mix                  Pcs        16
6          Cheez-It                  Pcs        15
2          BN Biscuit                Pcs        15
3          Mighty Munch              Pcs        17
4          Pot Rice                  Pcs        15
5          Jaffa Cakes               Pcs        18
7          Salt n Shake              Pcs

/* Inner Join */

SELECT * 
FROM company 
INNER JOIN foods 
ON company.company_id = foods.company_id;

COMPANY_ID COMPANY_NAME    COMPANY_CITY    ITEM_ID    ITEM_NAME       ITEM_UNIT  COMPANY_ID
---------- --------------- --------------- ---------- --------------- ---------- ----------
16         Akas Foods      Delhi           1          Chex Mix        Pcs        16
15         Jack Hill Ltd   London          6          Cheez-It        Pcs        15
15         Jack Hill Ltd   London          2          BN Biscuit      Pcs        15
17         Foodies.        London          3          Mighty Munch    Pcs        17
15         Jack Hill Ltd   London          4          Pot Rice        Pcs        15
18         Order All       Boston          5          Jaffa Cakes     Pcs        18

/* Natural Join */
SELECT * 
FROM company
NATURAL JOIN foods;

COMPANY_ID COMPANY_NAME    COMPANY_CITY    ITEM_ID    ITEM_NAME       ITEM_UNIT
---------- --------------- --------------- ---------- --------------- ----------
16         Akas Foods      Delhi           1          Chex Mix        Pcs
15         Jack Hill Ltd   London          6          Cheez-It        Pcs
15         Jack Hill Ltd   London          2          BN Biscuit      Pcs
17         Foodies.        London          3          Mighty Munch    Pcs
15         Jack Hill Ltd   London          4          Pot Rice        Pcs
18         Order All       Boston          5          Jaffa Cakes     Pcs
