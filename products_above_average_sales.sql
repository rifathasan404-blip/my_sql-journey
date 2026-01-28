-- Query to find products with sales greater than the average sales
SELECT
    ProductID,
    Sales,
    AverageSales
FROM (
    --Subquery to calculate average sales
    SELECT
        ProductID,
        Sales,
        AVG(ISNULL(Sales, 0)) OVER() AS AverageSales
    FROM Sales.Orders) t

WHERE Sales > AverageSales;