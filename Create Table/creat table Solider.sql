CREATE TABLE Soliders1
(
  soliderId INT NOT NULL,
  Rank INT NOT NULL,
  sName Varchar2 (35) NOT NULL,
  enrolmentDate DATE NOT NULL,
  unitId INT NOT NULL,
  PRIMARY KEY (soliderId),
  FOREIGN KEY (unitId) REFERENCES Unit(unitId)
);
