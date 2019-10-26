/*

FUNCTIONS: CHARACTER, DATETIME, NUMERIC

For more information, see manual: 

https://dev.mysql.com/doc/refman/8.0/en/functions.html
  
*/

/* CHARACTER FUNCTIONS */

-- Return the first or last few characters*/
SELECT
LEFT(last_name, 2)
FROM employees;

SELECT
RIGHT(last_name, 2)
FROM employees;

/* Return a sub-string */

SELECT
SUBSTRING('thewhitegoat',4,5);

/* Trim white spaces */

SELECT
LTRIM('              It is a sunny day!') AS 'Output';

SELECT
RTRIM('It is a sunny day!              ') AS 'Output';

/* Upper and Lower cases */

SELECT 
UPPER(first_name) AS 'First Name'
FROM employees;

SELECT
LOWER(first_name) AS 'First Name'
FROM employees;

/* 
COMPOSITE FUNCTION: Combining functions to work together 
Always start from the inside and work your way out when creating 
composite functions */

SELECT
RIGHT(RTRIM('Rockhurst University       '),10) AS 'Output';





/* DATE & TIME FUNCTIONS */ 

SELECT
NOW() AS 'Right Now';

SELECT 
DATE_FORMAT('2019-09-04', '%d') AS 'Day of Month';

SELECT
DATE_FORMAT('2019-09-04', '%m') AS 'Month of Year';

SELECT
DATE_FORMAT('2019-09-04', '%Y') AS 'Year'; -- Notice the upper case Y; try lower case?

SELECT
DATEDIFF(NOW(), '2015-11-01') AS 'Days Since Last World Series Win';

SELECT
timestampdiff(YEAR, '2015-11-01', NOW()) AS 'Years Since Last World Series Win'; 

SELECT
timestampdiff(MONTH, '2015-11-01', NOW()) AS 'Months Since Last World Series Win';

SELECT
timestampdiff(DAY, '2015-11-01', NOW()) AS 'Days Since Last World Series Win';

-- COMPOSITE FUNCTIONS WITH DATETIME

SELECT
emp_no AS 'Employee Number',
CONCAT(last_name, ', ', first_name) AS 'Last, First',
timestampdiff(YEAR, hire_date, NOW()) AS 'Tenure'
FROM employees;


/* NUMERIC FUNCTIONS */

-- Change the number of rounding digits to see what happens.
SELECT
emp_no AS 'Employee Number',
ROUND(salary/2080, 2) AS 'Hourly Wage'
FROM salaries;

SELECT
POWER(2,4) AS '2^4';

/* CONVERSION FUNCTION */

SELECT 
'2019-09-04' AS 'Original DateTime',
CAST('2019-09-04' AS DATETIME) AS 'Converted DateTime';

SELECT
NOW() AS 'Original DateTime',
CAST(NOW() AS DATE) AS 'Converted DateTime';

SELECT 
salary AS 'Int Data Type',
CAST(salary AS character) AS 'Variable Character Data Type'
FROM salaries;














