SELECT
    s.sName,
    au.uName,
    sub.Total_Ordered_Quantity
FROM (
    SELECT
        o.unitId,
        o.soldierId,
        (SELECT SUM(o2.ordQuantity)
         FROM Orders o2
         WHERE o2.unitId = o.unitId
         AND o2.soldierId = o.soldierId) AS Total_Ordered_Quantity
    FROM Orders o
    GROUP BY o.unitId, o.soldierId
) sub
JOIN Soldiers s ON sub.soldierId = s.soldierId
JOIN armyUnit au ON sub.unitId = au.unitId
ORDER BY sub.Total_Ordered_Quantity DESC, s.sName, au.uName;
