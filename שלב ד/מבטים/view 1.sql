-- Creating Views

CREATE VIEW Warehouse_Equipment_View AS
SELECT
    w.whId,
    w.address,
    w.WhSize, 
    e.eqtId,
    e.Name AS equipment_name,
    e.exportDate,
    e.eqQuantity
FROM
    Warehouse w
JOIN
    Equipment e ON w.whId = e.whId;
                          