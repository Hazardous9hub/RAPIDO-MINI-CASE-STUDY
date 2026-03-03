-- Problem Statement:
-- Identify the user(s) who have travelled in the maximum number of different vehicle types

-- Business Intent:
-- Identify exploratory or highly engaged users.

/*  Approach 1  */

SELECT 
  user_id, 
  COUNT(distinct vehicle_type) AS vehicle_type_count
FROM RAPIDO.RIDES
GROUP BY user_id
ORDER BY 
  vehicle_type_count DESC, 
  user_id asc
LIMIT 1;

/*  Approach 2  */

WITH veh_counts AS (
  SELECT 
  user_id, 
  COUNT(distinct vehicle_type) AS vehicle_type_count
FROM RAPIDO.RIDES
GROUP BY user_id
)
SELECT 
  user_id,
  MAX(vehicle_type_count
FROM veh_counts;





