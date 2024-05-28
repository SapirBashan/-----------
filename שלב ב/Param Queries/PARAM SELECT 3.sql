SELECT
    s.sName AS Soldier_Name,
    SUM(o.ordQuantity) AS Total_Equipment_Quantity
FROM Orders o
JOIN Soldiers s ON o.soldierId = s.soldierId
WHERE s.Rank = 5
GROUP BY s.soldierId, s.sName
ORDER BY Total_Equipment_Quantity DESC, s.sName ASC;
