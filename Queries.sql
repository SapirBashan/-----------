-- Non-trivial SELECT queries with subqueries using the Orders table

-- Query 1: Retrieve the names of all suppliers who have provided equipment to more than one warehouse
SELECT s.Name AS supplier_name
FROM Suppliers1 s
WHERE s.supplierId IN (
    SELECT o.supplierId
    FROM Order3 o
    GROUP BY o.supplierId
    HAVING COUNT(DISTINCT o.whId) > 1
);

