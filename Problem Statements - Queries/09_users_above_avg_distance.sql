-- Problem Statement:
-- Calculate each user’s total rides and total distance, and return only the users whose total distance 
-- is greater than the average total distance of all users, sorted by user_id

-- Business Intent:
-- Identify users contributing above-average value.

SELECT user_id,
        COUNT(ride_id) as total_rides,
        ROUND(SUM(distance_km),2) as total_distance
FROM RAPIDO.rides
GROUP BY user_id
HAVING ROUND(avg(distance_km),2) > (SELECT ROUND(avg(distance_km),2)
                                		FROM RAPIDO.RIDES R1
                                		WHERE distance_km IS NOT NULL)
ORDER BY user_id;
