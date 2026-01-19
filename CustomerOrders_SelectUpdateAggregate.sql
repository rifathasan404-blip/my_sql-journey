SELECT
        c.[CustomerID]
      , c.[FirstName]
      , c.[LastName]
      , c.[Country]
      , c.[Score]
      , o.[OrderID]
      , o.[ProductID]
      , o.[CustomerID]
      , o.[OrderStatus]
      , o.[Quantity]
      , o.[Sales]
      , CAST(o.[Quantity] AS decimal(10,2)) / NULLIF(o.[Sales], 0) AS [SalesPerQuantity]
FROM Sales.Orders AS o
    INNER JOIN Sales.Customers AS c
    ON o.CustomerID = c.CustomerID
WHERE O.OrderStatus = 'Shipped'
ORDER BY o.OrderID ASC


--Updating sales column in sales.orders
UPDATE Sales.Orders
SET Sales = 25
WHERE CustomerID = 3

--Aggregate functions with GROUP BY
SELECT 
OrderStatus,
COUNT(*) AS TotalOrders,
SUM(Sales) AS TotalSales,
AVG(Sales) AS AverageSales
FROM Sales.Orders
GROUP BY OrderStatus