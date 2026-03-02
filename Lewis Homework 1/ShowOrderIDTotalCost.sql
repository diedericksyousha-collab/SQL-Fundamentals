/*Math: Show the OrderID and the total cost for each line item (Quantity * UnitPrice).*/

SELECT Orders.OrderID, SUM(Quantity * UnitPrice) AS TotalCost
FROM Orders
JOIN Order_Items ON Orders.OrderID = Order_Items.OrderID
GROUP BY Orders.OrderID;