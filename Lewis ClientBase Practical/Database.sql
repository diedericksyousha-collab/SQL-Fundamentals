CREATE DATABASE LewisRetailQA;
GO
USE LewisRetailQA;
GO

CREATE TABLE SKUMaster (
    SKU VARCHAR(20) PRIMARY KEY,
    Description VARCHAR(100),
    BasePrice DECIMAL(10, 2),
    VATCategory VARCHAR(20),
    IsActive BIT
);

CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100),
    Status VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE SalesHeader (
    TransactionId INT PRIMARY KEY IDENTITY(5000,1),
    ReceiptNumber VARCHAR(20) UNIQUE,
    CustomerId INT FOREIGN KEY REFERENCES Customer(CustomerId),
    TotalAmount DECIMAL(10, 2),
    SaleDate DATE
);

CREATE TABLE SalesLine (
    LineId INT PRIMARY KEY IDENTITY(1,1),
    TransactionId INT FOREIGN KEY REFERENCES SalesHeader(TransactionId),
    SKU VARCHAR(20) FOREIGN KEY REFERENCES SKUMaster(SKU),
    Quantity INT,
    LineTotal DECIMAL(10, 2),
    VATAmount DECIMAL(10, 2)
);

CREATE TABLE Payments (
    PaymentId INT PRIMARY KEY IDENTITY(1,1),
    TransactionId INT FOREIGN KEY REFERENCES SalesHeader(TransactionId),
    PaymentType VARCHAR(20),
    AmountPaid DECIMAL(10, 2)
);

INSERT INTO SKUMaster (SKU, Description, BasePrice, VATCategory, IsActive)
VALUES 
('WASH-01', 'Washing Machine', 5000.00, 'STANDARD', 1),
('KET-001', 'Electric Kettle', 250.00, 'STANDARD', 1),
('FRIG-05', 'Double Door Fridge', 12000.00, 'STANDARD', 1);

INSERT INTO Customer (FullName, Status, Email)
VALUES 
('Anoona Sithole', 'PREMIUM', 'anoona@example.com'),
('Noku X', 'STANDARD', 'noku@example.com'),
('Test User', 'PREMIUM', 'test@example.com');

INSERT INTO SalesHeader (ReceiptNumber, CustomerId, TotalAmount, SaleDate)
VALUES 
('LWS-888', 1, 5150.00, '2026-03-09'),
('LWS-999', 2, 250.00, '2026-03-09'),
('LWS-101', 3, 12000.00, '2026-03-10');

INSERT INTO SalesLine (TransactionId, SKU, Quantity, LineTotal, VATAmount)
VALUES 
(5000, 'WASH-01', 1, 5000.00, 750.00),
(5000, 'KET-001', 1, 150.00, 22.50);

INSERT INTO Payments (TransactionId, PaymentType, AmountPaid)
VALUES 
(5000, 'CARD', 5150.00);