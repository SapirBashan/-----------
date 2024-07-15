CREATE TABLE Equipment_Gear (
    equipment_id INT,
    gear_id INT,
    PRIMARY KEY (equipment_id, gear_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(eqtId),
    FOREIGN KEY (gear_id) REFERENCES GEAR(gear_id)
);

