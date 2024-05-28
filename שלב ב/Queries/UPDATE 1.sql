UPDATE Equipment
SET eqQuantity = eqQuantity + (
    SELECT SUM(sub.totalQuantity) * 0.8
    FROM (
        SELECT e2.whId, SUM(e2.eqQuantity) AS totalQuantity
        FROM Equipment e2
        GROUP BY e2.whId
    ) sub
    WHERE sub.whId > 800
)
WHERE whId IN (
    SELECT whId
    FROM Warehouse
    WHERE REGEXP_LIKE(address, '^[BCDEF]')
);
