CREATE TABLE Officer
(
  numOfSoldiers INT NOT NULL,
  soldierId INT NOT NULL,
  FOREIGN KEY (soldierId) REFERENCES Soldiers(soldierId)
);
