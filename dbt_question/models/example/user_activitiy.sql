{{ config(materialized='table') }}
SELECT COUNT(DISTINCT user_id) AS active_users
FROM USERACTIVITY

WHERE activity_date >= '2024-01-01' and activity_date <= '2024-01-30'