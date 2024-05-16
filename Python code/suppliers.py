import random
import string

def generate_supplier_name():
    return ''.join(random.choices(string.ascii_letters, k=10))

# Generate SQL INSERT statements
insert_statements = []
for i in range(1, 201):
    supplier_id = i
    name = generate_supplier_name()
    insert_statement = f"INSERT INTO Supplier (supplierId, Name) VALUES ({supplier_id}, '{name}');"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)