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
