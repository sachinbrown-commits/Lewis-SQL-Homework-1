SELECT p.ProductName, oi.Quantity
FROM Order_Items oi
JOIN Products p ON oi.ProductID = p.ProductID;