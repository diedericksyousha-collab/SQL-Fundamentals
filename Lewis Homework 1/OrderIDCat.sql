/*14.	Join: Show the OrderID and the Category of each product included in that order.*/
SELECT o.OrderID, p.Category
FROM Orders o
JOIN Order_Items oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID;
