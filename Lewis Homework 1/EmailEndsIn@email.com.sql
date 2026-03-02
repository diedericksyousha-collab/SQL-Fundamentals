/*Filter: Find all customers whose Email ends with '@email.com'.*/

SELECT Email
FROM Customers
WHERE Email LIKE '%@email.com';