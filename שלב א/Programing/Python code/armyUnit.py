import random

# Define some example unit names and symbols
unit_names = [
    "Alpha", "Bravo", "Charlie", "Delta", "Echo",
    "Foxtrot", "Golf", "Hotel", "India", "Juliet"
]

symbols = [
    "Sword", "Shield", "Bow", "Medal", "Bomb",
    "Helicopter", "Rocket", "Anchor", "Eagle", "Star"
]

# Generate SQL INSERT statements
insert_statements = []
for i in range(1, 1001):
    unit_name = random.choice(unit_names)
    unit_id = i  # Assuming unitId starts from 1 and increments by 1
    symbol = random.choice(symbols)
    insert_statement = f"INSERT INTO armyUnit (uName, unitId, symbol) VALUES ('{unit_name}', {unit_id}, '{symbol}');"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)
