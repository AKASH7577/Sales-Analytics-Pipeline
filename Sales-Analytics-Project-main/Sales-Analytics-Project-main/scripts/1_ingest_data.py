import pandas as pd
import sqlite3
import os
csv_path = os.path.join('data', 'raw_data.csv')
db_path = os.path.join('data', 'sales_database.db')
df = pd.read_csv(csv_path)
conn = sqlite3.connect(db_path)
df.to_sql('sales_table', conn, if_exists='replace', index = False)
conn.close()
print(f"Success! Database created at {db_path}")