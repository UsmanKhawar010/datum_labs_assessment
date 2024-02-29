{{ config(materialized='table') }}



SELECT category_id,
       AVG(amount) AS average_sale_amount
FROM SALES1
GROUP BY category_id

