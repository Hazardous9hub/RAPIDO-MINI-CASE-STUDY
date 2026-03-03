-- Problem Statement:
-- List all users who have never taken a ride, sorted by user_id.

-- Business Intent:
-- Identify onboarding drop-offs after signup.

WITH riders as (
  SELECT user_id as u 
  FROM RAPIDO.rides
)
SELECT user_id, 
  first_name
FROM RAPIDO.users
WHERE user_id not in (Select u FROM riders)
ORDER BY  user_id;

