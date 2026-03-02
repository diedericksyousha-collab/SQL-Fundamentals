/*Group By: Display each Category and the number of products belonging to it.*/

SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;