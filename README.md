# Rapido SQL Mini Case Study 🚲🚕 #

## Overview
This repository contains a SQL-based analytical case study on a fictional **Rapido ride-hailing dataset**, designed to demonstrate real-world data analysis skills using SQL.

The analysis focuses on:
- User behavior and engagement
- Ride distance patterns
- Vehicle-type performance
- Signup cohort analysis
- Data segmentation and aggregation

All queries are written in **BigQuery SQL** and emphasize clarity, correctness, and analytical intent.

---

## Entity Relationship Diagram (ERD)

The dataset follows a simple star-style schema with:
- USERS as the dimension table
- RIDES as the fact table

See `schema/er_diagram.md` for the full ER diagram.

## Dataset Description

### USERS Table
| Column Name   | Description                          |
|--------------|--------------------------------------|
| user_id      | Unique user identifier               |
| first_name   | User's first name                    |
| last_name    | User's last name                     |
| signup_date  | Date the user registered on Rapido   |

### RIDES Table
| Column Name       | Description                          |
|------------------|--------------------------------------|
| ride_id          | Unique ride identifier               |
| user_id          | User who took the ride               |
| vehicle_type     | Type of vehicle used                 |
| start_location   | Ride start location                  |
| end_location     | Ride end location                    |
| distance_km      | Distance travelled (in km)           |
| captain_rating   | Rating given to the captain (0–5)    |

---

## Key Business Questions Answered

- Which users travel the most?
- How does ride distance vary by vehicle type?
- Which users are highly engaged vs inactive?
- How do signup cohorts behave over time?
- Which vehicle types attract diverse usage?

---

## SQL Concepts Demonstrated

- Aggregations (`SUM`, `AVG`, `COUNT`)
- Use of `GROUP BY`, `CASE WHEN` for conditonal buckets and grouping.
- Filtering with `HAVING`
- Subqueries (correlated & non-correlated)
- `CASE` expressions for segmentation
- `UNION DISTINCT`
- Date-based cohort filtering
- Conditional aggregation
- Analytical thinking with averages & thresholds

---

## How to Use This Repository

1. Review the problem statement at the top of each SQL file.
2. Examine the query logic and SQL patterns used.
3. Run queries in **BigQuery** or **MySQL** adapt them for other SQL dialects.
4. Refer to `results/` for expected outputs and row counts.

---
