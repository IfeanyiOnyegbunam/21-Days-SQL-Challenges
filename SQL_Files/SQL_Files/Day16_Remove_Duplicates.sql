-- Day 16: Remove Duplicate Emails
-- Concepts: CTE, GROUP BY, DELETE

-- Problem:
-- Delete all duplicate emails, keeping only the record
-- with the smallest id for each email.

WITH Duplicates AS (
    SELECT 
        MIN(id) AS min_id
    FROM Person
    GROUP BY email
)
DELETE
FROM Person
WHERE id NOT IN (
    SELECT min_id
    FROM Duplicates
);
