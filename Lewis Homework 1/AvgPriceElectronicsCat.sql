/* Aggregate: Find the average price of all products in the 'Electronics' category. */

SELECT AVG(Price) AS AvgElectronicsPrice
FROM Products
WHERE Category = 'Electronics';