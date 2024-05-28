UPDATE Soldiers
SET Rank = Rank + 1
WHERE soldierId IN (
    SELECT s2.soldierId
    FROM Soldiers s2
    WHERE ROUND(MONTHS_BETWEEN(SYSDATE, s2.enrolmentDate) / 12, 2) > 5
    GROUP BY s2.soldierId
);
