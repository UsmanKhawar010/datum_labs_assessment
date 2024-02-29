{{ config(materialized='table') }}
SELECT user.user_id,
       user.user_name,
       activity.activity_id,
       activity.activity_date,
       user.join_date
FROM USERACTIVITY activity
JOIN USERS user ON user.user_id = activity.user_id
WHERE user.join_date >= '2024-01-01'
    AND user.join_date <= '2024-01-31'

