/* orders placed between January 1st and February 1st, 2024 */

SELECT *
FROM Orders
WHERE OrderDate >= '2024-01-01' AND OrderDate < '2024-02-01';