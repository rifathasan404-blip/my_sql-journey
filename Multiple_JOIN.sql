/*Using SalesDB, retrive a list of orders along
 with related customer, product and employee details */

SELECT 
o.OrderID,
CONCAT(c.FirstName, c.LastName) AS [Customer's Name],
p.Product AS [Product Name],
p.Price,
CONCAT(e.FirstName, e.LastName) AS [Sales's Person Name]

FROM Sales.Orders AS o 
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID