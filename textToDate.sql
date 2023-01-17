/* How to convert text to date format
*/

/* To_date in Oracle */
SELECT TO_DATE('31-01-2021', 'DD-MM-YYYY') as date_value FROM DUAL;

/* Date_format in MySql */
ELECT DATE_FORMAT('31-01-2021', '%d-%m-%Y') as date_value;