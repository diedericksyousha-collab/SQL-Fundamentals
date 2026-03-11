SELECT *
FROM employees;

SELECT * 
FROM krabbycustomers;

SELECT DISTINCT money_spent, (customer_id)
FROM krabbycustomers
ORDER BY money_spent ASC

SELECT e.firstname
FROM employees e
INNER JOIN krabbycustomers k
ON e.firstname = k.firstname

SELECT e.firstname
FROM employees e
JOIN krabbycustomers k
ON e.firstname = k.firstname