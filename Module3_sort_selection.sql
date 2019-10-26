/* 

SORT & SELECTION

*/

-- Sort using the ORDER BY Statement
-- Sort Ascending

SELECT
emp_no,
first_name,
last_name
FROM employees
ORDER by last_name;

-- Sort Descending

SELECT
emp_no,
first_name,
last_name
FROM employees
ORDER by last_name DESC;


SELECT
emp_no,
first_name,
last_name
FROM employees
ORDER BY 
	last_name,
    first_name;

-- Sort by Calculated Field

SELECT
emp_no,
CONCAT(last_name,', ', first_name) AS 'Last, First'
FROM employees
ORDER BY 'Last, First';

SELECT
emp_no,
CONCAT(last_name,', ', first_name) AS FullName
FROM employees
ORDER BY FullName;

-- Applying Selection Criteria using WHERE statement

SELECT
emp_no,
first_name,
last_name
FROM employees
WHERE last_name = 'Facello';

-- Notice the order of the WHERE AND ORDER BY Statements
SELECT
emp_no,
first_name,
last_name
FROM employees
WHERE last_name = 'Facello'
ORDER BY first_name;


SELECT
emp_no,
salary
FROM salaries
WHERE salary >= 60000;
-- Change the code to order salary in descending order

-- Limiting Output

SELECT *
FROM employees
LIMIT 10;
-- Change the code to order by birth_date

-- Multiple Character Pattern Matching

SELECT 
first_name,
last_name
FROM employees
WHERE last_name LIKE '%cel%';
-- What happens if you remove one of the % at the front or the end?

-- One character pattern matching
SELECT
first_name,
last_name
FROM employees
WHERE first_name LIKE 'GEORG_';


	


