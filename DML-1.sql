--Insert data from customers to persons
INSERT INTO persons

SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers

--Update an already existing row 
UPDATE customers
SET country = 'Pakistan'
WHERE first_name = 'Hasan'

--Delete an existing row
DELETE FROM customers
WHERE id > 5