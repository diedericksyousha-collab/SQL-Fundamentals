SELECT *
FROM employees;

SELECT * 
FROM krabbycustomers;

SELECT DISTINCT money_spent, (customer_id)
FROM krabbycustomers
ORDER BY money_spent ASC