BEGIN
  DECLARE
    avg_rank NUMBER;
    soldier_cursor SYS_REFCURSOR;
    rec Soldiers%ROWTYPE;
  BEGIN
    -- חישוב ממוצע דרגות
    avg_rank := calculate_average('Rank', 'Soldiers');
    DBMS_OUTPUT.PUT_LINE('Average Rank: ' || avg_rank);

    -- החזרת רשומת חייל לפי מזהה
    soldier_cursor := get_record_by_id('Soldiers', 'soldierId', 101);
    LOOP
      FETCH soldier_cursor INTO rec;
      EXIT WHEN soldier_cursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Soldier ID: ' || rec.soldierId || ', Name: ' || rec.sName);
    END LOOP;
    CLOSE soldier_cursor;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
  END;
END;
/
