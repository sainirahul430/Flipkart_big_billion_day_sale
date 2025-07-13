-- ======================================================
-- 📊 Retail Analytics SQL Case Study
-- Author: [Your Name]
-- Description: Clean data, analyze product performance,
-- segment customers, and evaluate customer behavior.
-- ======================================================

-- ======================================================
-- 🧼 1. Data Cleaning
-- ======================================================

-- Remove nulls and duplicates from sales_transactions
SELECT DISTINCT *
FROM sales_transactions
WHERE customer_id IS NOT NULL AND product_id IS NOT NULL;

-- Optional: Check for missing values in customer_profiles
SELECT *
FROM customer_profiles
WHERE customer_id IS NULL OR age IS NULL;

-- ======================================================
-- 📈 2. Product Performance Analysis
-- ======================================================

-- Top 10 best-selling products by revenue
SELECT 
    p.product_name,
    SUM(s.quantity * s.price) AS total_revenue
FROM sales_transactions s
JOIN product_inventory p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Low-performing products (less than $500 in total revenue)
SELECT 
    p.product_name,
    SUM(s.quantity * s.price) AS total_revenue
FROM sales_transactions s
JOIN product_inventory p ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity * s.price) < 500
ORDER BY total_revenue ASC;

-- ======================================================
-- 👥 3. Customer Segmentation
-- ======================================================

-- Segment customers based on total quantity purchased
WITH customer_orders AS (
    SELECT customer_id, SUM(quantity) AS total_quantity
    FROM sales_transactions
    GROUP BY customer_id
)
SELECT customer_id,
       total_quantity,
       CASE
         WHEN total_quantity = 0 THEN 'No Orders'
         WHEN total_quantity BETWEEN 1 AND 10 THEN 'Low'
         WHEN total_quantity BETWEEN 11 AND 30 THEN 'Mid'
         ELSE 'High Value'
       END AS customer_segment
FROM customer_orders;

-- ======================================================
-- 🔁 4. Customer Behavior & Loyalty Analysis
-- ======================================================

-- Identify repeat customers (more than 1 purchase day)
SELECT customer_id,
       COUNT(DISTINCT transaction_date) AS purchase_days
FROM sales_transactions
GROUP BY customer_id
HAVING COUNT(DISTINCT transaction_date) > 1;

-- First vs. last purchase per customer (churn indicator)
SELECT customer_id,
       MIN(transaction_date) AS first_purchase,
       MAX(transaction_date) AS last_purchase,
       COUNT(*) AS total_orders
FROM sales_transactions
GROUP BY customer_id;

-- Most loyal customers by number of transactions
SELECT customer_id,
       COUNT(*) AS num_transactions,
       SUM(quantity * price) AS total_spent
FROM sales_transactions
GROUP BY customer_id
ORDER BY num_transactions DESC
LIMIT 10;

-- ======================================================
-- ✅ End of Analysis
-- ======================================================
