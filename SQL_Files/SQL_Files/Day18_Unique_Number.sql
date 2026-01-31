-- Day 18: Largest Unique Number
-- Concepts: GROUP BY, HAVING, Subquery

-- Problem:
-- Find the largest number that appears exactly once.
-- Return NULL if no such number exists.

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
);
