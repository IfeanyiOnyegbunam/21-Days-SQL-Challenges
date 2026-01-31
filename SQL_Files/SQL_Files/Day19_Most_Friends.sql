-- Day 19: Most Friends
-- Concepts: UNION ALL, GROUP BY, COUNT

-- Problem:
-- Find the person with the highest number of friends.
-- Friend relationships exist in both requester_id and accepter_id.

WITH Merged_IDs AS (
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted
)
SELECT 
    id,
    COUNT(*) AS num
FROM Merged_IDs
GROUP BY id
ORDER BY num DESC
LIMIT 1;
