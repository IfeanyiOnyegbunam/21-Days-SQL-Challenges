-- Day 20: Email Validation
-- Concepts: REGEXP, Pattern Matching

-- Problem:
-- Return users with valid emails.
-- Valid format:
-- - Starts with a letter
-- - Allows letters, numbers, _, ., -
-- - Domain must be '@leetcode.com'

SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
