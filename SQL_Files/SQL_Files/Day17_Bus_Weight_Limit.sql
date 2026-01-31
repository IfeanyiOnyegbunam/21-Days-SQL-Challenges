-- Day 17: Bus Weight Limit
-- Concepts: Window Function, Running Total, CTE

-- Problem:
-- Find the name of the last person who can board the bus
-- without exceeding the 1000kg weight limit.

WITH Last_Person AS (
    SELECT 
        turn,
        person_name,
        weight,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name
FROM Last_Person
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;
