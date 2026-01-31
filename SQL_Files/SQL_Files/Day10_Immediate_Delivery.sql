-- Day 10: Immediate Delivery Percentage
-- Concepts: Subquery, MIN, AVG, Date Comparison

-- Problem:
-- Calculate the percentage of customers who received their food
-- on their preferred delivery date, considering only their first order.

SELECT 
    ROUND(
        AVG(order_date = customer_pref_delivery_date) * 100, 
        2
    ) AS Immediate_Percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT 
        customer_id, 
        MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
