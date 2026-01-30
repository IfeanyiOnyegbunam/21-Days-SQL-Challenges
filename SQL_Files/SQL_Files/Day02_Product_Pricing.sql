## Problem

Categorize products into price groups and count how many products fall into each category.

Price Categories:
- Low Price: price < 100
- Medium Price: price between 100 and 500
- High Price: price > 500

Display results in descending order of product count.

SELECT
    CASE
        WHEN price < 100 THEN 'Low Price'
        WHEN price BETWEEN 100 AND 500 THEN 'Medium Price'
        ELSE 'High Price'
    END AS category,
    COUNT(*) AS no_of_products
FROM Products
GROUP BY category
ORDER BY no_of_products DESC;
