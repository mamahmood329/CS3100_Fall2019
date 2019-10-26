-- Subqueries: queries contain within other queries.

-- 1. Part of SELECT statement to specify a data source.  

# What is the average order amount? 

SELECT
	od.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS 'TotalAmount'
FROM orderdetails od
GROUP BY od.orderNumber;


SELECT
	AVG(ordertotals.TotalAmount) AS 'AverageAmount'
FROM (SELECT
	od.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS 'TotalAmount'
FROM orderdetails od
GROUP BY od.orderNumber) AS ordertotals;


SELECT
	FORMAT(AVG(ordertotals.TotalAmount),2) AS 'AverageAmount'
FROM (SELECT
	od.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS 'TotalAmount'
FROM orderdetails od
GROUP BY od.orderNumber) AS ordertotals;


-- 2. Part of SELECT statement to specify selection criteria.

# Who are the customers that placed an order in 2003?

SELECT
DISTINCT o.customerNumber
FROM orders o
WHERE YEAR(o.orderDate) = 2003
ORDER BY o.customerNumber;

# Refresher: We can use the IN() operator like this!
SELECT
c.customerName,
c.customerNumber
FROM customers c
WHERE c.customerName IN ('Atelier graphique', 'Signal Gift Stores', 'Australian Collectors, Co.');


SELECT
c.customerName,
c.customerNumber
FROM customers c
WHERE c.customerNumber IN(
SELECT
DISTINCT o.customerNumber
FROM orders o
WHERE YEAR(o.orderDate) = 2003
ORDER BY o.customerNumber);

-- 3. Part of SELECT statement to create a single calculated column.
# List of customer names and number of orders placed.

SELECT
customers.customerName,
(SELECT
COUNT(orders.orderNumber)
FROM orders
WHERE orders.customerNumber = customers.customerNumber) AS 'NumberOfOrders'
FROM customers;