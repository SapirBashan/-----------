CREATE TABLE Equipment
(
  eqtId INT NOT NULL,
  Name VARCHAR2(35) NOT NULL,
  exportDate DATE NOT NULL,
  eqQuantity INT NOT NULL,
  whId INT NOT NULL,
  PRIMARY KEY (eqtId),
  FOREIGN KEY (whId) REFERENCES Warehouse(whId)
);
