import random

# Define some example supplier names
supplier_names = [
    "Supplier A", "Supplier B", "Supplier C", "Supplier D", "Supplier E",
    "Supplier F", "Supplier G", "Supplier H", "Supplier I", "Supplier J"
]

# Generate SQL INSERT statements for Suppliers table
insert_statements = []
for i in range(1, 1001):
    supplier_id = i  # Assuming supplierId starts from 1 and increments by 1
    name = random.choice(supplier_names)
    seniority = random.randint(1, 30)  # Random seniority between 1 and 30 years

    insert_statement = f"INSERT INTO Suppliers (supplierId, Name, Seniority) VALUES ({supplier_id}, '{name}', {seniority});"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)
