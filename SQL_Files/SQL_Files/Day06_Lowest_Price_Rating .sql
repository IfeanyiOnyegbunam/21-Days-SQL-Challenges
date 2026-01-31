-- Day 06: Lowest Priced Product with High Rating
-- Concepts: LEFT JOIN, CASE, MIN, COALESCE, GROUP BY

-- Problem:
-- Find the lowest-priced product in each category, but only if the product
-- has a rating of 4 or higher.
-- If no product meets this condition in a category, return 0.

SELECT 
    pdt.category,
    COALESCE(
        MIN(
            CASE 
                WHEN pur.stars >= 4 THEN pdt.price 
            END
        ), 
        0
    ) AS lowest_price
FROM products pdt
LEFT JOIN purchases pur
    ON pdt.id = pur.product_id
GROUP BY pdt.category
ORDER BY pdt.category;
