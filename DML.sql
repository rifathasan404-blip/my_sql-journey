SELECT 
country,
score
FROM customers
ORDER BY country, score ASC

ALTER TABLE persons 
ADD email VARCHAR(50)

ALTER TABLE persons
DROP COLUMN phone

DROP TABLE persons