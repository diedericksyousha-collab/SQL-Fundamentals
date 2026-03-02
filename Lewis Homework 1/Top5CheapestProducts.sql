/* show the top 5 cheapest products in the store*/

SELECT TOP 5 Productname, Price
FROM Products
ORDER BY Price ASC
