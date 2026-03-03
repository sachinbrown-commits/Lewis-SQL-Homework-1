SELECT ProductID, SUM(Quantity) AS TotalSold
FROM Order_Items
GROUP BY ProductID;