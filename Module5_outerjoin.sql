-- OUTER JOINS --

-- LEFT (OUTER) JOIN --

SELECT *
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber;

SELECT *
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
WHERE o.customerNumber IS NULL;

SELECT *
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
WHERE o.customerNumber IS NOT NULL;


-- RIGHT (OUTER) JOIN --

SELECT *
FROM customers c
RIGHT JOIN orders ON c.customerNumber = o.customerNumber;

-- What differences do you see between the left and right join?




