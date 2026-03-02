/* 11.	Join: Display each OrderID along with the FirstName and LastName of the customer who placed it. */

SELECT OrderID, FirstName, LastName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;