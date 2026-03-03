-- Problem Statement:
--  Find each user’s average ride distance, categorize them as 
--  Low (<8 km), Medium (8-12 km), High (>12 km),
--  and count the number of users in each category, sorted by user_count in descending order


-- Business Intent:
-- Segment users for targeted strategies.

/*  Approach 1  */

SELECT
    distance_category,
    COUNT(user_id) AS user_count
FROM (
    SELECT
        user_id,
        CASE
            WHEN AVG(distance_km) < 8 THEN 'Low'
            WHEN AVG(distance_km) BETWEEN 8 AND 12 THEN 'Medium'
            ELSE 'High'
        END AS distance_category
    FROM RAPIDO.RIDES
    GROUP BY user_id
)
GROUP BY distance_category
ORDER BY user_count DESC;

/*  Approach 2 using CTE  */

WITH user_category AS (
  SELECT
        user_id,
        CASE
            WHEN AVG(distance_km) < 8 THEN 'Low'
            WHEN AVG(distance_km) BETWEEN 8 AND 12 THEN 'Medium'
            ELSE 'High'
        END AS distance_category
    FROM RAPIDO.RIDES
    GROUP BY user_id
)
SELECT 
  distance_category,
  COUNT(user_id)
FROM user_category
GROUP BY distance_category;




