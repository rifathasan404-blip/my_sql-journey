-- Create the neworders table with sample data
CREATE TABLE neworders (
    order_id INT PRIMARY KEY,
    price DECIMAL(10, 2),
    discount_price DECIMAL(10, 2)
);

-- Insert sample data into the neworders table
INSERT INTO neworders (order_id, price, discount_price) VALUES
(1, 100.00, 90.00),
(2, 200.00, 180.00),
(3, 150.00, 135.00),
(4, 300.00, 300.00);

-- Query to verify the inserted data
SELECT * FROM neworders

--Show products only upon which discount is available
SELECT 
order_id,
price,
discount_price,
NULLIF(discount_price, price) AS discount_available
FROM neworders

--check discount is available or not if no discount then replace the value with no
--discount available

SELECT 
order_id,
price,
discount_price,
CASE 
    WHEN NULLIF(discount_price, price) IS NULL THEN 'No discount available'
    ELSE 'Discount available'
END AS discount_status
FROM neworders

--Do the same thing using COALESCE function
SELECT 
order_id,
price,
discount_price,

COALESCE(
    CAST(NULLIF(discount_price, price) AS VARCHAR(50)),
    'No discount available'
    ) AS discount_status

FROM neworders

--If discount is not available then replace it with -1
SELECT 
order_id,
price,
discount_price,

COALESCE(
    NULLIF(discount_price, price),
    -1
    ) AS discount_status

FROM neworders

--Now same thing using ISNULL function
SELECT 
order_id,
price,
discount_price,
ISNULL(
    CAST(NULLIF(discount_price, price) AS VARCHAR(50)), 'No discount available') AS discount_status
FROM neworders
