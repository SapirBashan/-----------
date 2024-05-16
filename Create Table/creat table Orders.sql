CREATE TABLE Order3
(
 
  officer_id INT NOT NULL,
  unit_id INT NOT NULL,
  supplier_id INT NOT NULL,
  equipment_id INT NOT NULL,
  warehouse_id INT NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL,
  FOREIGN KEY (officer_id) REFERENCES Officers(soliderId),
  FOREIGN KEY (unit_id) REFERENCES Unit(unitId),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplierId),
  FOREIGN KEY (equipment_id) REFERENCES Equepments(eqtId),
  FOREIGN KEY (warehouse_id) REFERENCES Warehouses(whId)
);
