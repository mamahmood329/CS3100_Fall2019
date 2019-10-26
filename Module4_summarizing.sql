/* SUMMARIZING DATA */

SELECT *
FROM titles;


SELECT 
	DISTINCT title
FROM titles;


SELECT *
FROM salaries
WHERE emp_no = 10001;

SELECT
	FORMAT(SUM(salary),0) AS 'Total Wages Paid'
FROM salaries
WHERE emp_no = 10001;
    
    
SELECT
	ROUND(AVG(salary)) AS 'Avg Salary'
FROM salaries
WHERE emp_no = 10001;

SELECT
	MIN(salary) AS 'Min Wage Paid'
FROM salaries;

SELECT
	MAX(salary) AS 'Max Wage Paid'
FROM salaries;

SELECT 
	COUNT(*) As 'Total Employees'
FROM employees;

SELECT 
	COUNT(*) As 'Total Female Employees'
FROM employees
WHERE gender = 'F';

SELECT 
	COUNT(DISTINCT title) AS 'Total Job Titles'
FROM titles;

SELECT
	emp_no,
    AVG(salary) as AvgSalary
FROM salaries
GROUP BY emp_no
HAVING AVG(Salary) >= 140000
ORDER BY AvgSalary desc;




SELECT 
	CASE dept_no
    WHEN 'd001' THEN 'Marketing'
    WHEN 'd002' THEN 'Finance'
    ELSE 'Other'
    END AS 'Department',
	COUNT(emp_no) AS 'Number of Managers'
FROM dept_manager
GROUP BY 
	CASE dept_no
    WHEN 'd001' THEN 'Marketing'
    WHEN 'd002' THEN 'Finance'
    ELSE 'Other'
    END
ORDER BY dept_no;



SELECT 
	YEAR(hire_date) as HireYear,
	COUNT(emp_no) as NumberOfEmployees
FROM employees
GROUP BY YEAR(hire_date) WITH ROLLUP;





























	