SELECT oi.OrderID, oi.UnitPrice
FROM Order_Items oi
WHERE oi.UnitPrice > (
    SELECT AVG(Price)
    FROM Products
);