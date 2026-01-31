-- Day 15: Average Processing Time
-- Concepts: CTE, CASE, AVG, Aggregation

-- Problem:
-- Calculate the average processing time for each machine.
-- Processing time = end timestamp - start timestamp.
-- Round results to 3 decimal places.

WITH Complete_Process AS (
    SELECT 
        machine_id,
        process_id,
        MAX(
            CASE 
                WHEN activity_type = 'end' THEN timestamp 
            END
        ) - 
        MIN(
            CASE 
                WHEN activity_type = 'start' THEN timestamp 
            END
        ) AS process_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT 
    machine_id,
    ROUND(AVG(process_time), 3) AS processing_time
FROM Complete_Process
GROUP BY machine_id
ORDER BY machine_id;
