/* Data control language 
Manage access to users
Grant , Revoke
*/

/* Grant Syntax  */

GRANT privilege_name                /* eg. privileges SELECT , ALL, EXECUTE */
ON object_name                      /* TABLE, VIEW, STORED PROC and SEQUENCE.*/  
TO (user | PUBLIC | role_name)      /* user: who gets access, PUBLIC: all, role_name: set of privileges to grouped users */
[WITH_GRANT_OPTION]                 /* allows a user to grant access rights to other users. */

GRANT SELECT    
ON Person           
TO user1
/* if used, user1 can give grant select access to other users to Person table. If user1's access is revoked, 
other users access won't be revoked */
[WITH_GRANT_OPTION];

/* Revoke syntax */
REVOKE privilege_name
ON object_name
from (user | PUBLIC | role_name)

/* Revoke example */
REVOKE  SELECT
ON Person
from user1;











