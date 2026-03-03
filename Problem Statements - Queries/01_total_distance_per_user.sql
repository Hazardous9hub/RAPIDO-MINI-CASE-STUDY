-- Problem Statement:
-- Calculate the total distance traveled by each user and return only those users who traveled more than 20 km in total.

-- Business Intent:
-- Identify high-value or frequent users for retention or rewards.

SELECT user_id,
        ROUND(SUM(distance_km),2) as total_distance
FROM RAPIDO.RIDES
GROUP BY user_id
HAVING ROUND(SUM(distance_km),2) > 20.00
ORDER BY user_id ASC;
