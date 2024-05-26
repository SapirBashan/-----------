tables = [
    "Orders",
    "Officer",
    "Soldiers",
    "armyUnit",
    "Suppliers",
    "Equipment",
    "Warehouse;"
]

# Generate SQL DROP TABLE statements
drop_table_statements = [f"DROP TABLE {table};" for table in tables]

# Print the generated SQL statements
for statement in drop_table_statements:
    print(statement)


