-- Constraints.sql

-- Adding a CHECK constraint to ensure the whid of the Warehouse is a positive number
ALTER TABLE Warehouse
ADD CONSTRAINT whid CHECK (whid > 0);

-- Adding a DEFAULT constraint for the Seniority field in Suppliers to default to 1
ALTER TABLE Suppliers
MODIFY Seniority DEFAULT 1;

-- Adding a NOT NULL constraint to ensure the symbol in Solider is not null
ALTER TABLE Solider
ADD CONSTRAINT sName UNIQUE (sName)BEGIN
  DECLARE
    ref_cursor SYS_REFCURSOR;
    rec Soldiers%ROWTYPE;
  BEGIN
    -- עדכון כמות ציוד במחסן
    update_value_by_id('Equipment', 'eqtId', 101, 'eqQuantity', '600');

    -- מחיקת רשומה מהטבלה Orders
    delete_record_by_id('Orders', 'unitId', 1);

    -- החזרת רשומת חייל לפי מזהה
    ref_cursor := get_record_by_id('Soldiers', 'soldierId', 102);
    LOOP
      FETCH ref_cursor INTO rec;
      EXIT WHEN ref_cursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Soldier ID: ' || rec.soldierId || ', Name: ' || rec.sName);
    END LOOP;
    CLOSE ref_cursor;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
  END;
END;
/
