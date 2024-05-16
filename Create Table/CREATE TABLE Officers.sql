
CREATE TABLE Officers
(
  numOfSoliders INT NOT NULL,NS
  soliderId INT NOT NULL,
  PRIMARY KEY (soliderId),
  FOREIGN KEY (soliderId) REFERENCES Soliders1(soliderId)
);
