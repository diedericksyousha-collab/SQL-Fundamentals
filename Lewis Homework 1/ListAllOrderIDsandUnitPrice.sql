SELECT OrderID, UnitPrice
FROM Order_Items
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Order_Items);