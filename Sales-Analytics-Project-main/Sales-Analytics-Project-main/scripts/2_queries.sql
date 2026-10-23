-- cleaning data and calculate margins
SELECT 
"Order ID",
"Order Date",
"Customer Name",
"Category",
Sales,
Segment,
Sub-Category,
"Region",
(Sales *0.15) AS Estimated_Profit,
(Sales * 0.85) AS Estimated_Cost
FROM sales_table
WHERE Sales>0;

--Identify High-value customers using Window functions
WITH CustomerTotals AS(
    SELECT
     "Customer Name",
     SUM(Sales) AS TotalRevenue
    FROM sales_table
    GROUP BY "Customer Name"
)
SELECT
"Customer Name",
TotalRevenue,
RANK() OVER(ORDER BY TotalRevenue DESC) as Rank
FROM CustomerTotals
LIMIT 10;

--Aggregate Sales by Category and Segment
SELECT 
Category,
Segment,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit,
COUNT("Order ID") AS Total_Orders
FROM sales_table
GROUP BY Category, Segment
ORDER BY Total_Sales DESC;
