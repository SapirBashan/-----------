CREATE TABLE Personal_Info_Soldier (
  phone_number INT NOT NULL, 
  soldierId INT NOT NULL, 
  PRIMARY KEY (phone_number,soldierId),
  FOREIGN KEY (soldierId) REFERENCES Soldiers(soldierId),
  FOREIGN KEY (phone_number) REFERENCES Personal_info(phone_number)
);
