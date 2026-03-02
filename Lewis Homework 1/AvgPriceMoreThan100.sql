/*Having: Show product categories where the average price of items is above $100.*/

SELECT Category, AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 100;  