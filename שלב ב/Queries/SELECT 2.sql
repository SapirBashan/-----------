SELECT
    s.Name,
    sub.Unique_Warehouses
FROM (
    SELECT
        o.supplierId,
        (SELECT COUNT(DISTINCT o2.whId)
         FROM Orders o2
         WHERE o2.supplierId = o.supplierId) AS Unique_Warehouses
    FROM Orders o
    GROUP BY o.supplierId
) sub
JOIN Suppliers s ON sub.supplierId = s.supplierId
ORDER BY sub.Unique_Warehouses DESC, s.Name;
