import pandas as pd
import sqlite3
import os
conn = sqlite3.connect('data/sales_database.db')
query = """
-- cleaning data and calculate margins
SELECT 
"Order ID",
"Order Date",
"Customer Name",
"Category",
Sales,
Segment,
"Sub-Category",
"Region",
(Sales *0.15) AS Estimated_Profit,
(Sales * 0.85) AS Estimated_Cost
FROM sales_table
WHERE Sales>0;
"""

df = pd.read_sql_query(query, conn)
output_file = os.path.join('output', 'clean_sales_data.xlsx')
df.to_excel(output_file, index = False)

conn.close()
print(f"Success! File saved at: {output_file}")
