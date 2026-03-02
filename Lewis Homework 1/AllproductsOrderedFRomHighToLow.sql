/*Sort: Show all products ordered from the highest StockQuantity to the lowest.*/

SELECT ProductID, StockQuantity
FROM Products
ORDER BY StockQuantity DESC;