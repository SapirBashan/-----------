CREATE VIEW Volunteers_Shifts_View AS
SELECT
    v.volunteer_ID,
    v.name AS volunteer_name,
    v.join_date,
    s.shift_ID,
    s.start_date_time,
    s.end_date_time,
    b.base_ID,
    b.location AS base_location
FROM
    Volunteers v
JOIN
    signed_up su ON v.volunteer_ID = su.volunteer_ID
JOIN
    Shifts s ON su.shift_ID = s.shift_ID
JOIN
    Base b ON s.base_ID = b.base_ID;
