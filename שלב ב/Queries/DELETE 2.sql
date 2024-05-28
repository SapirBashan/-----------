DELETE FROM Orders
WHERE supplierId IN (
    SELECT sub.supplierId
    FROM (
        SELECT o.supplierId, SUM(o.ordQuantity) AS totalQuantity
        FROM Orders o
        WHERE o.orderDate >= ADD_MONTHS(SYSDATE, -3)
        GROUP BY o.supplierId
    ) sub
    JOIN Suppliers s ON sub.supplierId = s.supplierId
    WHERE sub.totalQuantity > 70
      AND s.Seniority > 5
);
