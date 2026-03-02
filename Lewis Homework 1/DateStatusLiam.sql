/*15.	Join: Find the OrderDate and the Status for all orders placed by customer 'Liam Smith'.*/
SELECT o.OrderDate, o.Status
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'Liam' 
AND c.LastName = 'Smith';