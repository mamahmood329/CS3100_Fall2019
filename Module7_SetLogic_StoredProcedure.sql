-- SET LOGIC


SELECT
o.orderDate AS 'Date',
'Order' AS 'Type'
FROM orders o
WHERE o.customerNumber = 114

UNION

SELECT
paymentDate AS 'Date',
'Payment' AS 'Type'
FROM payments
WHERE customerNumber = 114;

-- What is the difference between UNION and UNION ALL?

-- STORED PROCEDURE

-- CREATING A STORED PROCEDURE

DELIMITER $$
CREATE PROCEDURE CustomerPhoneProcedure (custNum INT)
BEGIN
SELECT
customerNumber,
customerName,
phone
FROM customers
WHERE customerNumber = custNum;
END$$
DELIMITER ;

-- USE A STORED PROCEDURE

CALL CustomerPhoneProcedure(103);

-- REMOVING STORED PROCEDURE

DROP PROCEDURE CustomerPhoneProcedure;

-- QUICK EXERCISE 



