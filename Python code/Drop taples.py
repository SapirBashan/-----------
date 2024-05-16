tables = [
    "Officers",
    "Soliders1",
    "Unit",
    "Suppliers1",
    "Equipments",
    "Warehouses"
]

# Generate SQL DROP TABLE statements
drop_table_statements = [f"DROP TABLE {table};" for table in tables]

# Print the generated SQL statements
for statement in drop_table_statements:
    print(statement)