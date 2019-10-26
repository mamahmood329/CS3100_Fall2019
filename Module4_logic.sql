/* MODULE 4: BOOLEAN LOGIC */

/* AND Operator */

SELECT *
FROM salaries
WHERE salary > 40000
AND salary < 60000;

/* OR Operator */
SELECT 
emp_no,
to_date,
salary
FROM salaries
WHERE YEAR(to_date) = 2000
OR YEAR (to_date) = 2001;

/* SQL processes AND before OR operator in a query */

SELECT
emp_no,
to_date,
salary
FROM salaries
WHERE (YEAR(to_date) = 2000
OR YEAR(to_date) = 2001)
AND emp_no = 10001;

-- Can you write a query to pull salary information for emp_no = 10001

/* NOT operator */

SELECT
emp_no,
to_date,
salary
FROM salaries
WHERE NOT emp_no = 10001;

/* BETWEEN operator */

SELECT *
FROM salaries
WHERE salary BETWEEN 40000 AND 60000;

/* IN operator */

SELECT
emp_no,
to_date,
salary
FROM salaries
WHERE YEAR(to_date) IN (2000,2001);

/*  

CONDITIONAL LOGIC 

*/

/* CASE statement */

SELECT *
FROM departments;


SELECT
CASE dept_no
WHEN 'd001' THEN 'Marketing'
WHEN 'd002' THEN 'Finance'
WHEN 'd003' THEN 'Human Resources'
ELSE 'Other'
END AS ' Department Description',
dept_no AS 'Department Number'
FROM departments;

/* Searched CASE Statement */

SELECT
CASE
WHEN dept_no = 'd001' THEN 'Marketing'
WHEN dept_no = 'd002' THEN 'Finance'
WHEN dept_no = 'd003' THEN 'Human Resources'
ELSE 'Other'
END AS 'Department Description',
dept_no AS 'Department Number'
FROM departments;

/* Conditional Logic in WHERE clause */

SELECT * 
FROM employees;


SELECT *
FROM employees
WHERE YEAR(birth_date) >
CASE
	WHEN gender = 'M' THEN 1960
    END;
    
    
SELECT *
FROM employees
WHERE gender = 'M'
AND YEAR(birth_date) > 1960;


SELECT *,
	   timestampdiff(year, hire_date, now()) AS Tenure
FROM employees
WHERE 1=CASE
	WHEN timestampdiff(year, hire_date, now()) = 20 THEN 1
	ELSE 0
END;






