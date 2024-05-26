import random
from datetime import datetime, timedelta

# Define some example equipment names
equipment_names = [
    "Generator", "Compressor", "Excavator", "Bulldozer", "Crane",
    "Forklift", "Drill", "Saw", "Hammer", "Wrench"
]

# Generate a random date within the last 5 years
def random_date(start, end):
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds()))
    )

# Generate SQL INSERT statements for Equipment table
insert_statements = []
start_date = datetime.now() - timedelta(days=365 * 5)
end_date = datetime.now()

for i in range(1, 498):
    eqt_id = i  # Assuming eqtId starts from 1 and increments by 1
    name = random.choice(equipment_names)
    export_date = random_date(start_date, end_date).strftime('%Y-%m-%d')
    eq_quantity = random.randint(1, 100)  # Random quantity between 1 and 100
    wh_id = random.randint(1, 1000)  # Assuming whId ranges from 1 to 1000

    insert_statement = f"INSERT INTO Equipment (eqtId, Name, exportDate, eqQuantity, whId) VALUES ({eqt_id}, '{name}', TO_DATE('{export_date}', 'YYYY-MM-DD'), {eq_quantity}, {wh_id});"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)
