DELETE FROM Orders
WHERE unitId IN (
    SELECT sub.unitId
    FROM (
        SELECT o.unitId, SUM(o.ordQuantity) AS totalQuantity
        FROM Orders o
        WHERE o.orderDate >= ADD_MONTHS(SYSDATE, -12)
        GROUP BY o.unitId
    ) sub
    WHERE sub.totalQuantity > 60
);
