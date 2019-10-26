-- SELF JOIN --
-- We use a column to point to another column within the same table. --

SELECT *
FROM employees;

-- Who is the only person that does not report to anyone? --

-- Using Self Join Approach ---
SELECT
	CONCAT(m.lastname, ', ', m.firstname) AS 'Manager',
    CONCAT(e.lastname, ', ', e.firstname) AS 'Direct Report'
FROM employees e
INNER JOIN employees m 
ON m.employeeNumber = e.reportsTo
ORDER BY Manager;

-- Using Left Join Approach --

SELECT 
	IFNULL(CONCAT(m.lastname, ', ', m.firstname), 'Top Manager') AS 'Manager',
    CONCAT(e.lastname, ', ', e.firstname) AS 'Direct Report'
FROM employees e
LEFT JOIN employees m 
ON m.employeeNumber = e.reportsTo
ORDER BY Manager DESC;


-- What's the output if we use a right join instead? --


-- VIEWS --
-- Views are virtual tables in a database --
-- A way to save queries in a database to be used by others without accessing the raw code -- 
SHOW TABLES;

CREATE VIEW empName AS
SELECT employeeNumber,
		CONCAT(lastName, ', ', firstName) AS employeeFullName
FROM employees
ORDER BY employeeNumber;

SHOW TABLES;

-- Retrieve View --
SELECT * 
FROM empName;

-- Drop View -- 
DROP VIEW IF EXISTS empName;


