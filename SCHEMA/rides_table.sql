-- RIDES TABLE
-- Stores ride-level transactional data

CREATE TABLE RAPIDO.RIDES (
    ride_id INT64 NOT NULL,             -- Unique identifier for each ride
    user_id INT64 NOT NULL,             -- References USERS.user_id
    vehicle_type STRING NOT NULL,       -- Type of vehicle (Bike, Cab AC, Cab Non AC, etc.)
    start_location STRING NOT NULL,     -- Ride start location
    end_location STRING NOT NULL,       -- Ride end location
    distance_km FLOAT64 NOT NULL,       -- Distance travelled in kilometers
    captain_rating INT64                -- Rating given to captain (0–5, nullable)
);

-- Primary Key: ride_id
-- Foreign Key (logical): user_id → USERS.user_id
