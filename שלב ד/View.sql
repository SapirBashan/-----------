-- Creating Views

CREATE VIEW Warehouse_Equipment_View AS
SELECT
    w.whId,
    w.address,
    w.WhSize, -- Renamed column to match the query
    e.eqtId,
    e.Name AS equipment_name,
    e.exportDate,
    e.eqQuantity
FROM
    Warehouse w
JOIN
    Equipment e ON w.whId = e.whId;

CREATE VIEW Volunteers_Shifts_View AS
SELECT
    v.volunteer_ID,
    v.name AS volunteer_name,
    v.join_date,
    s.shift_ID,
    s.start_date_time,
    s.end_date_time,
    b.base_ID,
    b.location AS base_location
FROM
    Volunteers v
JOIN
    signed_up su ON v.volunteer_ID = su.volunteer_ID
JOIN
    Shifts s ON su.shift_ID = s.shift_ID
JOIN
    Base b ON s.base_ID = b.base_ID;

-- Queries

-- Query 1: Get warehouses with size greater than 500
SELECT 
    whId, 
    address, 
    equipment_name, 
    exportDate, 
    eqQuantity 
FROM 
    Warehouse_Equipment_View 
WHERE 
    size > 500;

-- Query 2: Get equipment with the minimum export date for each warehouse
SELECT 
    whId, 
    address, 
    equipment_name, 
    exportDate 
FROM 
    Warehouse_Equipment_View 
WHERE 
    (whId, exportDate) IN (
        SELECT 
            whId, 
            MIN(exportDate) 
        FROM 
            Warehouse_Equipment_View 
        GROUP BY 
            whId
    );

-- Query 3: Get shifts at base ID 1
SELECT 
    volunteer_ID, 
    volunteer_name, 
    shift_ID, 
    start_date_time, 
    end_date_time 
FROM 
    Volunteers_Shifts_View 
WHERE 
    base_ID = 1;

-- Query 4: Get volunteers with shifts ending before January 1, 2024
SELECT 
    volunteer_ID, 
    volunteer_name, 
    shift_ID, 
    end_date_time 
FROM 
    Volunteers_Shifts_View 
WHERE 
    end_date_time < TO_DATE('2024-01-01', 'YYYY-MM-DD');
