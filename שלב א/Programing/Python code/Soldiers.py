import random
from datetime import datetime, timedelta

# Define some example soldier names
soldier_names = [
    "John", "Alex", "Michael", "Sarah", "Jessica",
    "David", "Emily", "Daniel", "Laura", "Chris"
]

# Generate a random date within the last 10 years
def random_date(start, end):
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds()))
    )

# Generate SQL INSERT statements for Soldiers table
insert_statements = []
start_date = datetime.now() - timedelta(days=365 * 10)
end_date = datetime.now()

for i in range(1, 486):
    soldier_id = i  # Assuming soldierId starts from 1 and increments by 1
    rank = random.randint(1, 10)  # Random rank between 1 and 10
    s_name = random.choice(soldier_names)
    enrolment_date = random_date(start_date, end_date).strftime('%Y-%m-%d')
    unit_id = random.randint(1, 1000)  # Assuming unitId ranges from 1 to 1000

    insert_statement = f"INSERT INTO Soldiers (soldierId, Rank, sName, enrolmentDate, unitId) VALUES ({soldier_id}, {rank}, '{s_name}', TO_DATE('{enrolment_date}', 'YYYY-MM-DD'), {unit_id});"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)
