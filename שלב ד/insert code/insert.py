import random

# Generate INSERT statements for Personal_Info_Soldier
personal_info_soldier_statements = []
for i in range(1, 401):
    phone_number = random.randint(1000000000, 9999999999)
    soldier_id = i
    
    insert_statement = f"""
INSERT INTO Personal_Info_Soldier (phone_number, soldierId)
VALUES ({phone_number}, {soldier_id});
"""
    personal_info_soldier_statements.append(insert_statement.strip())

# Generate INSERT statements for Equipment_Gear
equipment_gear_statements = []
for i in range(1, 401):
    equipment_id = i
    gear_id = random.randint(1, 400)
    
    insert_statement = f"""
INSERT INTO Equipment_Gear (equipment_id, gear_id)
VALUES ({equipment_id}, {gear_id});
"""
    equipment_gear_statements.append(insert_statement.strip())

# Write SQL statements to files
with open('personal_info_soldier_insert_statements.sql', 'w') as file:
    for statement in personal_info_soldier_statements:
        file.write(statement + '\n')

with open('equipment_gear_insert_statements.sql', 'w') as file:
    for statement in equipment_gear_statements:
        file.write(statement + '\n')