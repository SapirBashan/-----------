SELECT
    s.Name AS Supplier_Name,
    COUNT(DISTINCT o.whId) AS Num_Warehouses_Supplied
FROM Orders o
JOIN Suppliers s ON o.supplierId = s.supplierId
WHERE s.supplierId > 800
GROUP BY s.supplierId, s.Name
ORDER BY Num_Warehouses_Supplied DESC, s.Name ASC;
