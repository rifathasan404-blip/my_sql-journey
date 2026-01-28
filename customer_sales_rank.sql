-- Test Case 1: Ranking Customers by Total Sales
SELECT 
t.CustomerID,
c.FirstName + ' ' + ISNULL(c.LastName, '') AS CustomerName,
t.TotalSales,       
RANK() OVER (ORDER BY TotalSales DESC) AS RankByOrderDate
FROM (
    SELECT 
    CustomerID,
    SUM(Sales) AS TotalSales
    FROM Sales.Orders
    GROUP BY CustomerID
)t

LEFT JOIN Sales.Customers c 
ON t.CustomerID = c.CustomerID