import random
from datetime import datetime, timedelta

# Generate a random date within the last 2 years
def random_date(start, end):
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds()))
    )

# File path where the SQL insert statements will be saved
file_path = r'C:\Users\sapir\OneDrive\שולחן העבודה\סמסטר ב שנה ג\מיניפ בבסנת\שלב א\Python Method\Insert From Python\Orders from python.sql'

# Generate SQL INSERT statements for Orders table
insert_statements = []
start_date = datetime.now() - timedelta(days=365 * 2)
end_date = datetime.now()

for i in range(1, 1001):
    unit_id = random.randint(1, 1000)  # Assuming unitId ranges from 1 to 1000
    eqt_id = random.randint(1, 1000)  # Assuming eqtId ranges from 1 to 1000
    soldier_id = random.randint(1, 1000)  # Assuming soldierId ranges from 1 to 1000
    wh_id = random.randint(1, 1000)  # Assuming whId ranges from 1 to 1000
    supplier_id = random.randint(1, 1000)  # Assuming supplierId ranges from 1 to 1000
    order_date = random_date(start_date, end_date).strftime('%Y-%m-%d')
    ord_quantity = random.randint(1, 100)  # Random order quantity between 1 and 100

    insert_statement = f"INSERT INTO Orders (unitId, eqtId, soldierId, whId, supplierId, orderDate, ordQuantity) VALUES ({unit_id}, {eqt_id}, {soldier_id}, {wh_id}, {supplier_id}, TO_DATE('{order_date}', 'YYYY-MM-DD'), {ord_quantity});"
    insert_statements.append(insert_statement)

# Save the generated SQL statements to the specified file
with open(file_path, 'w') as file:
    for statement in insert_statements:
        file.write(statement + '\n')

print(f"SQL insert statements have been written to {file_path}")
