-- Problem Statement:
-- Count the number of rides in Cab AC and Cab Non AC, 
-- but only include rides longer than the average distance of all rides.

-- Business Intent:
-- Compare vehicle performance under similar conditions.

SELECT
        SUM(CASE WHEN vehicle_type = 'Cab AC' THEN 1 ELSE 0 END) AS cab_ac_count,
        SUM(CASE WHEN vehicle_type = 'Cab Non AC' THEN 1 ELSE 0 END) AS cab_non_ac_count
FROM RAPIDO.rides
WHERE distance_km > (SELECT avg(distance_km)
                        FROM RAPIDO.RIDES R1);
