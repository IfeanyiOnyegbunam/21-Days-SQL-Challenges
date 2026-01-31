-- Day 12: Managers With 5+ Direct Reports
-- Concepts: CTE, GROUP BY, JOIN, COUNT

-- Problem:
-- Identify managers who have at least 5 direct reports.
-- Return only the manager names.

WITH Manager_Reports AS (
    SELECT 
        managerId,
        COUNT(*) AS report_count
    FROM Employee
    GROUP BY managerId
)
SELECT 
    E.name
FROM Employee E
JOIN Manager_Reports M
    ON E.id = M.managerId
WHERE M.report_count >= 5
ORDER BY M.managerId;
