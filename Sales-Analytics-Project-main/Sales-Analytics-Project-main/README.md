# 📊 Sales Analytics Pipeline

> An end-to-end data pipeline and reporting solution that transforms raw sales data into actionable business insights - powered by Python, SQL, Power BI, and Excel automation.

---

## 🧩 Problem Statement

Sales teams often drown in raw transactional data with no clear visibility into what's driving profit, which segments are underperforming, or how operational costs are trending. Manual reporting is slow, error-prone, and inconsistent across teams.

This project simulates a real-world analytics workflow - from raw data ingestion to executive-ready dashboards, solving exactly that problem.

---

## 🎯 Objectives

- Ingest and store 9,800+ sales records in a structured database
- Calculate critical KPIs: Profit Margins, Operational Costs, Revenue by Segment
- Automate Excel reporting to eliminate repetitive manual work
- Build interactive dashboards for non-technical stakeholders

---

## 🗂️ Project Architecture

```
raw_data (CSV / Kaggle)
        │
        ▼
  Python (Pandas)         ← Data cleaning & transformation
        │
        ▼
  SQLite Database         ← Structured storage
        │
        ▼
  SQL Queries             ← KPI calculation (CTEs, Window Functions, Rankings)
        │
        ├──────────────────────────────────┐
        ▼                                  ▼
Excel Automation                     Power BI Dashboard
(PivotTables, SUMIFS,             (DAX measures, slicers,
 Power Query reports)              segment drill-downs)
```

---

## 🛠️ Tech Stack

| Layer | Tools Used |
|---|---|
| Data Ingestion & Cleaning | Python (Pandas, NumPy) |
| Storage | SQLite |
| Analysis & KPIs | SQL (CTEs, Window Functions, Subqueries) |
| Automated Reporting | Advanced Excel (Power Query, SUMIFS, PivotTables) |
| Visualization | Power BI (DAX, Interactive Dashboards) |
| Dataset Source | Kaggle |

---

## 📌 Key Features

### 🔹 SQL Analytics Layer
- Used **CTEs and Window Functions** to calculate rolling profit margins and rank segments by performance
- Wrote subqueries to isolate underperforming product categories for targeted reporting
- Structured queries designed for reusability and easy extension

### 🔹 Excel Automation
- Replaced manual copy-paste workflows with **Power Query pipelines** that auto-refresh on data update
- Built SUMIFS-based summary tables for quick stakeholder snapshots
- Reduced manual data preparation time by approximately **60%** (from ~3 hours/week to ~45 minutes)

### 🔹 Power BI Dashboard
- Developed DAX measures for dynamic KPI cards (Profit Margin %, Revenue Growth, Cost Ratio)
- Added slicers for region, segment, and time period filtering
- Enabled stakeholders to self-serve answers without waiting for analyst reports

---

## 📈 Sample KPIs Tracked

| KPI | Description |
|---|---|
| Profit Margin % | (Revenue - Cost) / Revenue per segment |
| Operational Cost Ratio | Cost as % of total revenue |
| Segment Revenue Ranking | Ranked using SQL RANK() window function |
| Month-over-Month Growth | Calculated via LAG() in SQL |

---

## 💡 Business Impact

- **9,800+ records** processed and stored in a clean, queryable format
- Reporting time cut by ~60% through Excel automation
- Stakeholders can independently explore performance by segment, region, and time period through the Power BI dashboard - reducing ad-hoc analyst requests

---

## 🗃️ Repository Structure

```
sales-analytics-pipeline/
│
├── data/
│   └── raw_sales_data.csv          # Source dataset (Kaggle)
│
├── sql/
│   ├── create_tables.sql           # Schema definition
│   ├── kpi_queries.sql             # Core KPI calculations
│   └── segment_analysis.sql       # Segment ranking & margin queries
│
├── python/
│   ├── data_ingestion.py           # CSV → SQLite pipeline
│   ├── data_cleaning.py            # Preprocessing & validation
│   └── eda.ipynb                   # Exploratory Data Analysis notebook
│
├── excel/
│   └── sales_report_template.xlsx  # Automated Excel report
│
├── powerbi/
│   └── sales_dashboard.pbix        # Power BI dashboard file
│
└── README.md
```

---

## 🚀 How to Run

### Prerequisites
```bash
pip install pandas numpy sqlite3 openpyxl
```

### Steps

```bash
# 1. Clone the repository
git clone https://github.com/Nandana3/sales-analytics-pipeline.git
cd sales-analytics-pipeline

# 2. Run the ingestion pipeline
python python/data_ingestion.py

# 3. Run KPI queries
# Open any SQLite client (e.g., DB Browser) and run files in /sql/

# 4. Open Excel report
# Open excel/sales_report_template.xlsx → Refresh Power Query

# 5. Open Power BI dashboard
# Open powerbi/sales_dashboard.pbix in Power BI Desktop
```

---

