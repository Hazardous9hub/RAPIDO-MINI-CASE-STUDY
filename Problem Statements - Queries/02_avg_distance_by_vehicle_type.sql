-- Problem Statement:
-- Calculate the average distance per ride for each vehicle type and return only those with an average distance greater than 8 km.

-- Business Intent:
-- Identify vehicle types preferred for longer journeys.

SELECT 
  vehicle_type, 
  ROUND(avg(distance_km),2) as avg_distance
FROM RAPIDO.RIDES
GROUP BY vehicle_type
HAVING ROUND(avg(distance_km),2) > 8.00;
