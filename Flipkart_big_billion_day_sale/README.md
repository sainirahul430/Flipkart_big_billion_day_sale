
# 📦 Flipkart Big Billion Days Sale – SQL Analytics Project

## 🛍️ Project Overview

The **Flipkart Big Billion Days (BBD) Sale** is one of the largest e-commerce events in India, generating billions in revenue and attracting millions of customers over just a few days.

This project simulates a real-world SQL data analysis scenario around the BBD sale — focusing on sales performance, customer segmentation, and behavioral analytics. The goal is to extract insights that could help **drive revenue, improve retention, and optimize product strategy** for future campaigns.

> 🎯 **Objective**: Use SQL to analyze the impact of the Big Billion Days sale by identifying top-performing products, segmenting customers based on their buying behavior, and uncovering patterns that can shape marketing and inventory decisions.

---

## 🔍 Business Problem

Despite massive traffic and transaction volumes, Flipkart wants to answer:

- Which products performed exceptionally well, and which underperformed?
- What types of customers are spending the most — and how can we retain them?
- How do repeat purchase patterns differ from one-time buyers during BBD?
- What inventory or marketing strategies need refinement before the next event?

---

## 📊 Key Objectives

- 🧼 **Clean raw data** using SQL (remove duplicates, handle nulls).
- 🛒 **Analyze product performance** across categories and revenue tiers.
- 👥 **Segment customers** by total quantity purchased:
  - No Orders
  - Low (1–10 units)
  - Mid (11–30 units)
  - High Value (>30 units)
- 🔁 **Evaluate customer behavior**:
  - Repeat vs one-time buyers
  - Purchase timelines (first vs last)
  - Loyalty signals and spend analysis
- 📈 **Deliver insights and recommendations** that inform business decisions.

---

## 🗃️ Dataset Structure

| Table               | Description                                                           |
|---------------------|-----------------------------------------------------------------------|
| `sales_transactions`| Records of all BBD sales transactions: customer ID, product ID, qty, price, date |
| `customer_profiles` | Age, gender, location, and signup date of each customer              |
| `product_inventory` | Product ID, category, name, price, and stock level                   |

---

## 🧾 Project Structure

flipkart-bbd-sql-project/  
├── data/ # Sample CSVs or cleaned SQL tables  
├── queries/ # Core SQL script + query README  
│ └── retail_analysis.sql # Modular script (cleaning, analysis, segmentation)  
├── reports/ # Business insights, project reflection, recommendations  
├── images/ # Visualizations: charts, ERD, outputs  
└── README.md # (You're here!)


---

## 📂 Highlights from the Analysis

- 🎯 **Top 10 Products** accounted for over **60% of sale revenue**.
- 🧊 **Low-performing SKUs** identified — many were overpriced or understocked.
- 👑 **"High Value" Customers** (purchased >30 items) made up **15%** but generated **45%** of total revenue.
- 🔁 **Repeat Customers** showed **2.3× higher lifetime value** than one-time buyers.
- 🧠 **Churn Risk Identified**: 20% of users signed up but never made a purchase.

---

## 💼 Business Recommendations

1. **Target high-value buyers** with loyalty programs and exclusive BBD previews.
2. **Re-engage dormant customers** via personalized email campaigns pre-sale.
3. **Optimize inventory** by phasing out low-revenue SKUs and stocking bestsellers.
4. **Boost cross-sells** using purchasing patterns from repeat buyers.

---

## 🧠 Tools & Skills Used

- SQL (joins, aggregates, CTEs, CASE, filtering)
- Data cleaning and transformation
- Business and customer segmentation logic
- Visual storytelling and insight writing
- Git & GitHub for version control and documentation

---

## ✅ What's Next

- 🔗 Connect SQL to Power BI or Tableau to build interactive dashboards
- 📦 Add time series or market basket analysis
- ⚙️ Automate reports using dbt, Airflow, or scheduled jobs
- 📈 Build machine learning models to predict customer churn or LTV

---

## 🙋‍♂️ About Me

Hi! I'm a data analyst passionate about transforming data into strategy. This project simulates a real business use case, combining technical SQL skills with business storytelling — exactly what companies like Flipkart, Amazon, or Nykaa need to win in today's market.

📧 Feel free to connect or reach out!

---

> 📌 **Pro Tip**: Scroll through the `queries/` and `reports/` folders to view the actual SQL logic, visual insights, and business recommendations.
