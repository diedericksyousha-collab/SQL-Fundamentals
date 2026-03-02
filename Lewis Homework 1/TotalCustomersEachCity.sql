/* Group By: Show the total number of customers living in each city.*/

SELECT City, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City;

