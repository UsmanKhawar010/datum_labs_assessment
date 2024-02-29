{{ config(materialized='table') }}

SELECT SUM(amount) AS total_sales_revenue
FROM Sales
WHERE sale_date >= '2024-01-01'
    AND sale_date <= '2024-01-31'