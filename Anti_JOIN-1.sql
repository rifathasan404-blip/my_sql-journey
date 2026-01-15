/*Get all customers along with their oders, 
but only for customers who have placed an
order without using inner join */

SELECT *
FROM customers
FULL JOIN orders
ON id = customer_id
WHERE id IS NOT NULL AND customer_id IS NOT NULL

SELECT *
FROM customers
LEFT JOIN orders
ON id = customer_id
WHERE customer_id IS NOT NULL

SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id