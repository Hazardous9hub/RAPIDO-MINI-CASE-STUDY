-- Problem Statement:
-- Find the percentage of rides out of total that had a captain rating = 0

-- Business Intent:
-- Monitor service quality issues.

SELECT
  ROUND((SUM(
          CASE 
            WHEN captain_rating = 0 THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) as captain_zero_percentage
FROM RAPIDO.RIDES;
