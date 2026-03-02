/*13.	Join: List the Email of the customer for every order that is currently 'Processing'*/
SELECT c.Email
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Status = 'Processing';