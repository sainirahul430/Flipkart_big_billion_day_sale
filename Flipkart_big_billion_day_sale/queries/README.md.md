
# 🧠 SQL Query Summary – Retail Analytics Project

This folder contains the core SQL script used to analyze retail sales, customer segmentation, and purchasing behavior.

## 🗃️ File: `retail_analysis.sql`

The script is modular and broken into the following sections:

### 1. Data Cleaning
- Removes duplicates and nulls from transactional and customer data.

### 2. Product Performance
- Identifies high and low-performing products based on total revenue.

### 3. Customer Segmentation
- Segments customers based on the **total quantity** of items purchased:
  - `No Orders` (0)
  - `Low` (1–10)
  - `Mid` (11–30)
  - `High Value` (>30)

### 4. Customer Behavior
- Identifies repeat customers.
- Calculates first vs. last purchase (churn signals).
- Ranks top loyal customers by transaction count and revenue.

## 📌 Notes
- This script assumes the existence of 3 tables:
  - `sales_transactions`
  - `customer_profiles`
  - `product_inventory`
- Adjust SQL dialects if using MySQL, PostgreSQL, or SQLite.

## 📎 Next Steps
- Integrate these queries with a dashboard tool (e.g., Power BI, Tableau)
- Schedule queries for automation (e.g., via dbt or Airflow)
