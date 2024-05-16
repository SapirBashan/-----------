CREATE TABLE Warehouses
(
  address Varchar2 (35) NOT NULL,
  whId INT NOT NULL,
  PRIMARY KEY (whId)
);

CREATE TABLE Suppliers
(
  supplierId INT NOT NULL,
  Name Varchar2 (35) NOT NULL,
  PRIMARY KEY (supplierId)
);


CREATE TABLE Officer
(
  numOfSoliders INT NOT NULL,NS
  soliderId INT NOT NULL,
  PRIMARY KEY (soliderId),
  FOREIGN KEY (soliderId) REFERENCES Soliders1(soliderId)
);

