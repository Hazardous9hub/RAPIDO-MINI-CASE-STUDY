-- Problem Statement:
-- Identify all the user(s) who signed up on the earliest signup date. How many such users are there?

-- Business Intent:
-- Analyze behavior of early adopters.

SELECT *
from RAPIDO.users
WHERE signup_date = (SELECT signup_date
                        FROM RAPIDO.users
                        ORDER BY signup_date ASC
                        LIMIT 1);
