CREATE OR REPLACE FUNCTION calculate_average(column_name IN VARCHAR2, table_name IN VARCHAR2) 
RETURN NUMBER 
IS
  avg_value NUMBER;
  query_str VARCHAR2(1000);
  cur SYS_REFCURSOR;
BEGIN
  query_str := 'SELECT AVG(' || column_name || ') FROM ' || table_name;
  OPEN cur FOR query_str;
  FETCH cur INTO avg_value;
  CLOSE cur;
  RETURN avg_value;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Error calculating average: ' || SQLERRM);
END calculate_average;
/
