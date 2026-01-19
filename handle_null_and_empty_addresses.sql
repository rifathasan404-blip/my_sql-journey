---Handling NULL and empty string values in ShipAddress and BillAddress
WITH
    Orders
    AS
    (
            SELECT 1 AS OrderID, NULL AS ShipAddress, '123 Billing St' AS BillAddress
        UNION ALL
            SELECT 2 AS OrderID, '456 Shipping Ln' AS ShipAddress, '' AS BillAddress
        UNION ALL
            SELECT 3 AS OrderID, NULL AS ShipAddress, '' AS BillAddress
        UNION ALL
            SELECT 4 AS OrderID, '789 Delivery Rd' AS ShipAddress, '789 Billing Rd' AS BillAddress
    )

SELECT
    OrderID,
    ShipAddress,
    BillAddress,
    COALESCE(NULLIF(BillAddress, ''), NULL, 'Unknown' ) AS Corrected_BillAddress,
    ISNULL(NULLIF(ShipAddress, ''), 'No Ship Address') AS Corrected_ShipAddress
FROM Orders;