/* find all products in home office stock with a quantity greater than 10 */

SELECT *
FROM Products
WHERE Category = 'Home Office'
 AND StockQuantity > 10;