-- Day 21: Player Retention
-- Concepts: CTE, MIN, JOIN, DATE_ADD, Aggregation

-- Problem:
-- Calculate the fraction of players who logged in again
-- the day after their first login.
-- Round the result to 2 decimal places.

WITH first_log AS (
    SELECT 
        player_id, 
        MIN(event_date) AS first_log_date
    FROM Activity
    GROUP BY player_id
),
next_day AS (
    SELECT 
        f.player_id
    FROM first_log f
    JOIN Activity a
        ON f.player_id = a.player_id
       AND a.event_date = DATE_ADD(f.first_log_date, INTERVAL 1 DAY)
)
SELECT ROUND(
    (SELECT COUNT(DISTINCT player_id) FROM next_day) * 1.0 /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) AS fraction;
