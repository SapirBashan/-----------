CREATE OR REPLACE PROCEDURE delete_record_by_id(table_name IN VARCHAR2, id_column IN VARCHAR2, id_value IN NUMBER) 
IS
  query_str VARCHAR2(1000);
BEGIN
  query_str := 'DELETE FROM ' || table_name || ' WHERE ' || id_column || ' = ' || id_value;
  EXECUTE IMMEDIATE query_str;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20004, 'Error deleting record: ' || SQLERRM);
END delete_record_by_id;
/
