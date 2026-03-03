SELECT oi.OrderID, p.Category
FROM Order_Items oi
JOIN Products p ON oi.ProductID = p.ProductID;