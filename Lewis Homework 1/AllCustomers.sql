/*Left Join: Find all customers who have not placed any orders yet*/
SELECT *
FROM Customers
WHERE Customers.CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);