CREATE TABLE armyUnit
(
  uName VARCHAR2(35) NOT NULL,
  unitId INT NOT NULL,
  symbol VARCHAR2(100) NOT NULL,
  PRIMARY KEY (unitId)
);

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

CREATE TABLE Soldiers
(
  soldierId INT NOT NULL,
  Rank INT NOT NULL,
  sName VARCHAR2(35) NOT NULL,
  enrolmentDate DATE NOT NULL,
  unitId INT NOT NULL,
  PRIMARY KEY (soldierId),
  FOREIGN KEY (unitId) REFERENCES armyUnit(unitId)
);
CREATE TABLE Suppliers
(
  supplierId INT NOT NULL,
  Name VARCHAR2(35) NOT NULL,
  Seniority INT NOT NULL,
  PRIMARY KEY (supplierId)
);
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
CREATE TABLE Officer
(
  numOfSoldiers INT NOT NULL,
  soldierId INT NOT NULL,
  FOREIGN KEY (soldierId) REFERENCES Soldiers(soldierId)
);

CREATE TABLE Warehouse
(
  address VARCHAR2(35) NOT NULL,
  whId INT NOT NULL,
  WhSize INT NOT NULL,
  PRIMARY KEY (whId)
);

