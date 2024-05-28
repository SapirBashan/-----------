SELECT
    au.uName,
    s.sName,
    sub.Total_Ordered_Quantity
FROM (
    SELECT
        o.unitId,
        o.soldierId,
        (SELECT SUM(o2.ordQuantity)
         FROM Orders o2
         WHERE o2.unitId = o.unitId
         AND o2.soldierId = o.soldierId
         AND o2.orderDate >= ADD_MONTHS(SYSDATE, -12)) AS Total_Ordered_Quantity
    FROM Orders o
    GROUP BY o.unitId, o.soldierId
) sub
JOIN armyUnit au ON sub.unitId = au.unitId
JOIN Soldiers s ON sub.soldierId = s.soldierId
ORDER BY sub.Total_Ordered_Quantity DESC, au.uName, s.sName;
