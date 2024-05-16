CREATE TABLE Equepments
(
  
  eqName Varchar2 (35) NOT NULL,
  whId INT NOT NULL,
  eqtId INT NOT NULL,
  PRIMARY KEY (eqtId),
  FOREIGN KEY (whId) REFERENCES Warehouses(whId)
);
