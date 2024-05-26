
CREATE TABLE Orders
(
  unitId INT NOT NULL,
  eqtId INT NOT NULL,
  soldierId INT NOT NULL,
  whId INT NOT NULL,
  supplierId INT NOT NULL,
  orderDate DATE NOT NULL,
  ordQuantity INT NOT NULL,
  PRIMARY KEY (unitId, eqtId, soldierId, whId, supplierId),
  FOREIGN KEY (unitId) REFERENCES armyUnit(unitId),
  FOREIGN KEY (eqtId) REFERENCES Equipment(eqtId),
  FOREIGN KEY (soldierId) REFERENCES Soldiers(soldierId),
  FOREIGN KEY (whId) REFERENCES Warehouse(whId),
  FOREIGN KEY (supplierId) REFERENCES Suppliers(supplierId)
);
