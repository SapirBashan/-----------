SELECT
    w.address AS Warehouse_Address,
    SUM(o.ordQuantity) AS Total_Equipment_Quantity
FROM Orders o
JOIN Warehouse w ON o.whId = w.whId
WHERE w.WHsize >= 300
GROUP BY w.whId, w.address
ORDER BY Total_Equipment_Quantity DESC, w.address ASC;
