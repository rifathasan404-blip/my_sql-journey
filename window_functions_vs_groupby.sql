
--Find total sales for each product
--Additionally provide details such as orderID, order date

SELECT 
ProductID,
OrderID,
OrderDate,
SUM(Sales) OVER(PARTITION BY ProductID) AS TotalSales
FROM Sales.Orders

SELECT 
ProductID,
SUM(Sales)  AS TotalSales
FROM Sales.Orders
GROUP BY ProductID