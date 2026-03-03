-- Problem Statement:
-- Find the average distance travelled by users who signed up in May 2025.

-- Business Intent:
-- Understand behavior of new user cohort.

SELECT
    AVG(distance_km) AS avg_distance
FROM RAPIDO.RIDES
WHERE user_id IN (
    SELECT user_id
    FROM RAPIDO.USERS
    WHERE signup_date BETWEEN '2025-05-01' AND '2025-05-31'
);
