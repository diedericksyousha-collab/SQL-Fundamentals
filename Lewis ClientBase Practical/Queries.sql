SELECT sh.ReceiptNumber, sl.SKU, sl.LineTotal, sl.VATAmount
FROM SalesHeader sh
JOIN SalesLine sl
ON sh.TransactionId= sl.TransactionId
WHERE sh.TransactionId = 5000

SELECT *
FROM Customer
WHERE [Status] = 'Premium'

SELECT SUM(TotalAmount) AS TOTALVALUES
FROM SalesHeader
WHERE SaleDate = '2026-03-09'

SELECT ReceiptNumber
FROM SalesHeader sh
LEFT JOIN Payments p
ON sh.TransactionId = p.TransactionId
WHERE p.TransactionId IS NULL