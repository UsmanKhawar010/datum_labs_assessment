{{ config(materialized='table') }}
SELECT p.category_id,
       c.category_name,
       SUM(s.amount) AS total_sales_amount
FROM Sales1 s
JOIN Products p ON s.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
WHERE s.sale_date >= '2024-01-01'
    AND s.sale_date <= '2024-01-31'
GROUP BY p.category_id,
         c.category_name
ORDER BY total_sales_amount DESC
LIMIT 1

