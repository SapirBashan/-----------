-- Constraints.sql

-- Adding a CHECK constraint to ensure the whid of the Warehouse is a positive number
--ALTER TABLE Warehouse
--ADD CONSTRAINT whid CHECK (whid > 0);

-- Adding a DEFAULT constraint for the Seniority field in Suppliers to default to 1
--ALTER TABLE Suppliers
--MODIFY Seniority DEFAULT 1;

-- Adding a NOT NULL constraint to ensure the symbol in armyUnit is not null
ALTER TABLE Soliders
ADD CONSTRAINT soliderId UNIQUE (Name);
