#1
SELECT
orderNumber
FROM orders
WHERE (SELECT SUM(orderdetails.quantityOrdered * orderdetails.priceEach)
		FROM orderdetails
        WHERE orderdetails.orderNumber = orders.orderNumber) > 50000;
        
#2

SELECT 
customers.customerName,
orders.orderNumber
FROM customers 
JOIN orders 
ON orders.customerNumber = customers.customerNumber
WHERE orders.orderNumber IN (SELECT
orderNumber
FROM orders
WHERE (SELECT SUM(orderdetails.quantityOrdered * orderdetails.priceEach)
		FROM orderdetails
        WHERE orderdetails.orderNumber = orders.orderNumber) > 50000);
        
#3. 

SELECT 
customers.customerNumber,
customers.customerName 
FROM customers
WHERE NOT EXISTS (SELECT *
				  FROM orders
                  WHERE orders.customerNumber = customers.customerNumber);


				
