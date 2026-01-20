--General query of sales.orders, this to see the data
SELECT * FROM Sales.Orders;

--Query to categorize sales into High, Medium, and Low categories
-- and calculate total sales, number of orders, and average sales for each category
SELECT
    CASE 
        WHEN Sales > 25 THEN 'High'
        WHEN Sales BETWEEN 20 AND 25 THEN 'Medium'
        ELSE 'Low'
    END AS SalesCategory,
    SUM (Sales) AS TotalSales,
    COUNT (*) AS NumberOfOrders,
    AVG (Sales) AS AverageSales
FROM Sales.Orders

GROUP BY 
    CASE 
        WHEN Sales > 25 THEN 'High'
        WHEN Sales BETWEEN 20 AND 25 THEN 'Medium'
        ELSE 'Low'
    END