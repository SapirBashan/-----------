CREATE OR REPLACE FUNCTION get_record_by_id(table_name IN VARCHAR2, id_column IN VARCHAR2, id_value IN NUMBER)
RETURN SYS_REFCURSOR
IS
  ref_cursor SYS_REFCURSOR;
  query_str VARCHAR2(1000);
BEGIN
  query_str := 'SELECT * FROM ' || table_name || ' WHERE ' || id_column || ' = ' || id_value;
  OPEN ref_cursor FOR query_str;
  RETURN ref_cursor;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'Error fetching record: ' || SQLERRM);
END get_record_by_id;
/
