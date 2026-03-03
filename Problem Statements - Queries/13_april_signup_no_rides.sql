-- Problem Statement:
-- Find the users who signed up in April 2025 but have not taken any rides, sorted by user_id.


-- Business Intent:
-- Measure activation effectiveness for April cohort.

SELECT
    user_id,
    first_name,
    last_name
FROM RAPIDO.users
WHERE signup_date BETWEEN '2025-04-01' AND '2025-04-30'
  AND user_id NOT IN (SELECT user_id FROM RAPIDO.RIDES)
ORDER BY user_id;
