--Handling NULL values in ShipAddress and BillAddress
SELECT
    ShipAddress,
    ISNULL(ShipAddress, 'No Ship Address') AS Corrected_ShipAddress,
    BillAddress,
    ISNULL(BillAddress, 'No Bill Address') AS Corrected_BillAddress
FROM Sales.Orders