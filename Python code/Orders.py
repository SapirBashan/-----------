from faker import Faker
import random
from datetime import datetime, timedelta

fake = Faker()

# Generate 200 random orders
orders = []
for i in range(1, 201):
    order = {
        'officer_id': i,
        'unit_id': i,
        'supplier_id': i,
        'equipment_id': i,
        'warehouse_id': i,
        'quantity': random.randint(1, 100),
        'order_date': fake.date_between(start_date='-1y', end_date='today').strftime('%m/%d/%Y')  # Random date within the last year
    }
    orders.append(order)

# Generate SQL INSERT statements
insert_queries = []
for order in orders:
    insert_query = f"INSERT INTO Order3 (officer_id, unit_id, supplier_id, equipment_id, warehouse_id, quantity, order_date) VALUES ({order['officer_id']}, {order['unit_id']}, {order['supplier_id']}, {order['equipment_id']}, {order['warehouse_id']}, {order['quantity']}, TO_DATE('{order['order_date']}', 'MM/DD/YYYY'));"
    insert_queries.append(insert_query)

# Print the generated INSERT statements
for query in insert_queries:
    print(query)