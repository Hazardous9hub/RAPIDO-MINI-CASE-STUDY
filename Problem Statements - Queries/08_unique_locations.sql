-- Create a combined list of all unique start_locations from Rides 
--and all unique end_location values from Rides in 1 column, name it as location.


SELECT
  DISTINCT start_location AS location
FROM RAPIDO.RIDES

UNION DISTINCT    
--Use only 'UNION' in MySQL
  
SELECT 
  DISTINCT end_location
FROM RAPIDO.RIDES

