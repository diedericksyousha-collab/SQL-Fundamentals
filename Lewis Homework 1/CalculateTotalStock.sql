/*17.	Aggregate: Calculate the total number of products currently in stock across the whole store.*/
SELECT SUM(StockQuantity) AS TotalStock
FROM Products;
