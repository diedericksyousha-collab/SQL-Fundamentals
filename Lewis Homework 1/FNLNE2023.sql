/* list frst name, last name and email of all cutsomers that joined 2023*/

SELECT FirstName, LastName, Email, JoinDate
FROM Customers
WHERE YEAR(JoinDate) = 2023;