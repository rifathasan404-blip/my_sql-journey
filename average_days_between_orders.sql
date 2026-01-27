--- SQL Query to find the number of days between consecutive orders for each customer
SELECT 
CustomerID,
AVG(DaysBetweenOrders) AS AverageDaysBetweenOrders,
RANK() OVER(ORDER BY AVG(DaysBetweenOrders) DESC) AS RankByAverageDaysBetweenOrders
FROM (

SELECT 
OrderID,
CustomerID,
OrderDate,
LAG(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) AS PreviousOrderDate,
ABS(DATEDIFF(DAY, OrderDate, LAG(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate))) AS DaysBetweenOrders
FROM Sales.Orders
)t

GROUP BY CustomerID