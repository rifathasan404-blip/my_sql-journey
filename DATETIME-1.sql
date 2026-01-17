-- This query retrieves the creation time of orders in a clear and formatted manner.
--"Day Sunday January Q1 2025 23:22:04 PM"           

SELECT

'Day ' + 
DATENAME(WEEKDAY, CreationTime) + ' ' +
DATENAME(MONTH, CreationTime) + ' Q' +
CAST(DATEPART(QUARTER, CreationTime) AS VARCHAR(1)) + 
FORMAT(CreationTime, ' yyyy hh:mm:ss tt') AS [A clear format]

FROM Sales.Orders