SELECT
    sub.Month,
    sub.Year,
    w.address,
    sub.Total_Quantity
FROM (
    SELECT
        EXTRACT(MONTH FROM o.orderDate) AS Month,
        EXTRACT(YEAR FROM o.orderDate) AS Year,
        o.whId,
        (SELECT SUM(o2.ordQuantity)
         FROM Orders o2
         WHERE o2.whId = o.whId
         AND EXTRACT(MONTH FROM o2.orderDate) = EXTRACT(MONTH FROM o.orderDate)
         AND EXTRACT(YEAR FROM o2.orderDate) = EXTRACT(YEAR FROM o.orderDate)) AS Total_Quantity
    FROM Orders o
    GROUP BY o.whId, EXTRACT(MONTH FROM o.orderDate), EXTRACT(YEAR FROM o.orderDate)
) sub
JOIN Warehouse w ON sub.whId = w.whId
ORDER BY sub.Year, sub.Month, w.address;
