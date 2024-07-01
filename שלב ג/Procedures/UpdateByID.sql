CREATE OR REPLACE PROCEDURE update_value_by_id(table_name IN VARCHAR2, id_column IN VARCHAR2, id_value IN NUMBER, update_column IN VARCHAR2, new_value IN VARCHAR2) 
IS
  query_str VARCHAR2(1000);
BEGIN
  query_str := 'UPDATE ' || table_name || ' SET ' || update_column || ' = ' || new_value || ' WHERE ' || id_column || ' = ' || id_value;
  EXECUTE IMMEDIATE query_str;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20003, 'Error updating value: ' || SQLERRM);
END update_value_by_id;
/
