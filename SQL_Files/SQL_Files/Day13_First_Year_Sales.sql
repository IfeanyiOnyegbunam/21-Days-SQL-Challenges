-- Day 13: First Year Product Sales
-- Concepts: MIN, GROUP BY, JOIN

-- Problem:
-- For each product, find the year it was first sold
-- and return all sales records from that year.

WITH Earliest_Year AS (
    SELECT 
        product_id, 
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)
SELECT 
    S.product_id,
    E.first_year,
    S.quantity,
    S.price
FROM Sales S
JOIN Earliest_Year E
    ON S.product_id = E.product_id
   AND S.year = E.first_year
ORDER BY S.product_id;
