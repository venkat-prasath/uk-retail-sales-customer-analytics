
-- UK Retail Sales & Customer Analytics
-- Dataset: UCI Online Retail
-- Purpose: Explore sales, products, countries and customers.
-- Note: Revenue reflects the cleaning rules applied in Python.

-- 1. Overall sales metrics
SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(*) AS cleaned_line_items,
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


-- 3. Monthly revenue trends
SELECT
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_invoices
FROM retail_sales
GROUP BY strftime('%Y-%m', InvoiceDate)
ORDER BY month;


-- 4. Top 10 countries by revenue
SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Quantity) AS units_sold
FROM retail_sales
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;


-- 5. Top 10 customers by revenue
SELECT
    CustomerID,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS invoice_count
FROM retail_sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY total_revenue DESC
LIMIT 10;
