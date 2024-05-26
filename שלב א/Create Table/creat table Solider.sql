
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
