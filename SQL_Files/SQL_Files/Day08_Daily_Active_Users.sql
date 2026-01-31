-- Day 08: Daily Active Users
-- Concepts: COUNT DISTINCT, DATE FILTERING, GROUP BY

-- Problem:
-- Find the daily active user count for the 30-day period
-- ending on 2019-07-27 (inclusive).

SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date
ORDER BY activity_date;
