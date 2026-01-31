-- Day 09: Confirmation Rate
-- Concepts: LEFT JOIN, CASE, AVG, COALESCE

-- Problem:
-- Calculate the confirmation rate for each user.
-- Users with no confirmations should have a rate of 0.

SELECT 
    S.user_id,
    COALESCE(
        ROUND(
            AVG(
                CASE 
                    WHEN C.action = 'confirmed' THEN 1 
                    ELSE 0 
                END
            ), 
            2
        ), 
        0
    ) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C
    ON S.user_id = C.user_id
GROUP BY S.user_id
ORDER BY S.user_id;
