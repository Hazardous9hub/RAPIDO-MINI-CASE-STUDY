-- Problem Statement:
--  Find all users who have more than two rides and display the total number of rides per user, sorted by user_id

-- Business Intent:
-- Distinguish frequent users from casual users.

SELECT 
  user_id, 
  COUNT(ride_id) as total_rides
FROM RAPIDO.RIDES
GROUP BY user_id
HAVING COUNT(ride_id) > 2
ORDER BY user_id asc;
