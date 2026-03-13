Create database BookStoreDB

create table Customers1 (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
)

create table Books (
    BookID INT,
    Title VARCHAR(50),
    Author VARCHAR(50),
    Price DECIMAL(6, 2)
)

create table BookOrders (
    OrderID INT,
    CustomerID INT,
    BookID INT,
    Quantity INT
)

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email)
VALUES (1, 'Colly', 'Tia', 'CollyTia@gmail.com'), (2, 'Conner', 'Cane', 'ConnerCane@gmail.com'), (3, 'Kyle', 'Forne', 'KyleForne@gmail.com'), (4, 'Don', 'Johe', 'DonJohe@gmail.com'), (5, 'Gia', 'Ferry', 'GiaFerry@gmail.com');

INSERT INTO Books (BookID, Title, Author, Price)
VALUES (1, 'Henna', 'Carlao', 370), (2, 'Pollygon', 'Jay', 430.20), (3, 'Uione', 'Moby', 230), (4, 'Gonetheday', 'Danny', 260), (5, 'ForReal', 'Gonn', 650);

INSERT INTO BookOrders (OrderID, CustomerId, BookID, Quantity)
VALUES (1, 1, 4, 2), (2, 2, 2, 1), (3, 5, 3, 6), (4, 4, 1, 1), (5, 3, 5, 3);

SELECT *
FROM Customers1

SELECT *
FROM Books
WHERE Price > 300

SELECT DISTINCT c.FirstName, c.LastName, b.Title, bo.*
FROM Customers1 c, Books b
JOIN BookOrders bo
ON CustomerID = bo.CustomerID AND b.BookID = bo.BookID

UPDATE Books
SET Price = 280.00
WHERE BookID = 1

DELETE 
FROM BookOrders
WHERE OrderID = 5

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email)
VALUES (6, 'Daniel', 'Park', 'DanielPark@gmail.com');

SELECT DISTINCT c.FirstName, b.Title, bo.Quantity, SUM(b.Price * bo.Quantity) AS TotalCost
FROM Customers1 c, Books b, BookOrders bo

SELECT SUM(Quantity) AS TotalQuantity
FROM BookOrders
