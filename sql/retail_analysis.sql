-- UK Retail Sales & Customer Analytics
-- SQL business analysis queries

-- 1. Overall sales metrics
SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT InvoiceNo) AS total_invoices,
    COUNT(DISTINCT CustomerID) AS unique_customers
FROM retail_sales;

-- 2. Top 10 products by revenue
SELECT
    Description AS product,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Quantity) AS units_sold
FROM retail_sales
WHERE Description IS NOT NULL
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;
