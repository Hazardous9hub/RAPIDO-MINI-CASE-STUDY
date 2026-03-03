-- Problem Statement:
-- Find rides whose distance is greater than the average distance per vehicle type, 
-- sorted by user_id and ride_id.

-- Business Intent:
-- Identify exceptional rides within each vehicle category.

SELECT 
  user_id, 
  ride_id
FROM RAPIDO.RIDES AS r
GROUP BY 
  user_id, 
  ride_id, 
  vehicle_type
HAVING  
  round(avg(distance_km),2) > 
  (SELECT round(avg(distance_km),2) 
    FROM RAPIDO.RIDES R1
    WHERE R1.vehicle_type = r.vehicle_type)
order by 
  user_id, 
  ride_id;
