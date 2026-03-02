/*Having: List the cities that have more than 2 customers.*/

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 2;