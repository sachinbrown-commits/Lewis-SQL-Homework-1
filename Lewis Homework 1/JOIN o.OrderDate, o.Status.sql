SELECT o.OrderDate, o.Status
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'Liam'
AND c.LastName = 'Smith';