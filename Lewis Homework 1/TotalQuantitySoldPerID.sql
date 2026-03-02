/*Group By: Find the total quantity of items sold for each ProductID.*/

SELECT ProductID, SUM(StockQuantity) AS TotalQuantitySold
FROM Products
GROUP BY ProductID;