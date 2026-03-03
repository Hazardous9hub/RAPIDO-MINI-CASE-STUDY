-- Problem Statement:
-- Find users who took at least one ride longer than 10 km.

-- Business Intent:
-- Identify users with high-distance travel needs.

SELECT
    user_id,
    SUM(distance_km) AS total_distance
FROM RAPIDO.RIDES
WHERE distance_km > 10
GROUP BY user_id
ORDER BY user_id;
