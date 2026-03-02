/*Math: Calculate the "Total Value" of the inventory for each product (Price * StockQuantity).*/

SELECT ProductID, (Price * StockQuantity) AS TotalValue
FROM Products;