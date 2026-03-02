/* Join: Show the ProductName and the Quantity sold for every entry in the Order_Items table. */
SELECT p.ProductName, oi.Quantity
FROM Order_Items oi
JOIN Products p ON oi.ProductID = p.ProductID