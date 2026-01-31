-- Day 07: Second Most Recent Order
-- Concepts: CTE, ROW_NUMBER, COUNT OVER, Window Functions

-- Problem:
-- For each customer, return the second most recent order.
-- If a customer has only one order, return that order instead.

WITH CTE_Ranks AS (
    SELECT 
        order_id,
        order_date,
        customer_name,
        product_name,
        sales,
        ROW_NUMBER() OVER (
            PARTITION BY customer_name 
            ORDER BY order_date DESC
        ) AS rnk,
        COUNT(order_id) OVER (
            PARTITION BY customer_name
        ) AS ord_count
    FROM orders
)
SELECT 
    order_id,
    order_date,
    customer_name,
    product_name,
    sales
FROM CTE_Ranks
WHERE rnk = 2 OR ord_count = 1
ORDER BY customer_name;
