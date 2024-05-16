import random

# Generate SQL INSERT statements
insert_statements = []
for i in range(1, 201):
    num_of_soldiers = random.randint(1, 10)  # Generate a random number of soldiers for each officer
    soldier_id = i  # Assuming soldierId starts from 1 and increments by 1
    insert_statement = f"INSERT INTO Officers (numOfSoliders, soliderId) VALUES ({num_of_soldiers}, {soldier_id});"
    insert_statements.append(insert_statement)

# Print the generated SQL statements
for statement in insert_statements:
    print(statement)