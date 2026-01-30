## Problem

Calculate the average salary of employees in each department.

Conditions:
- Include only departments with more than 2 employees.
- Round average salary to 2 decimal places.
- Sort results by average salary in descending order.


SELECT 
    d.department_name,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM Departments d
JOIN Employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(*) > 2
ORDER BY average_salary DESC;
