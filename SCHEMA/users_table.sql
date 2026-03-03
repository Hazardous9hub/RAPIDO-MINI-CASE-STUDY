-- USERS TABLE
-- Stores user-level information for the Rapido platform

CREATE TABLE RAPIDO.USERS (
    user_id INT64 NOT NULL,            -- Unique identifier for each user
    first_name STRING NOT NULL,         -- User's first name
    last_name STRING NOT NULL,          -- User's last name
    signup_date DATE NOT NULL           -- Date when the user signed up
);

-- Primary Key: user_id
