-- Day 11: Employees Without Managers
-- Concepts: Subquery, NOT IN, Filtering

-- Problem:
-- Find employees whose salary is less than 30000
-- and whose manager is no longer in the Employees table.
-- Sort the result by employee_id.

SELECT employee_id
FROM employees
WHERE salary < 30000
  AND manager_id NOT IN (
        SELECT employee_id
        FROM employees
    )
ORDER BY employee_id;
