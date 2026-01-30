## Problem

For each loan, create two flags:

1. fully_paid_flag  
   - 1 if total payments ≥ loan amount  
   - 0 otherwise

2. on_time_flag  
   - 1 if fully paid on or before due date  
   - 0 otherwise

Display loan ID, loan amount, due date, and both flags.


SELECT 
    l.loan_id,
    l.loan_amount,
    l.due_date,

    CASE 
        WHEN SUM(p.amount_paid) >= l.loan_amount THEN 1 
        ELSE 0 
    END AS fully_paid_flag,

    CASE 
        WHEN SUM(p.amount_paid) >= l.loan_amount
             AND MAX(p.payment_date) <= l.due_date
        THEN 1 
        ELSE 0 
    END AS on_time_flag

FROM loans l
LEFT JOIN payments p
    ON l.loan_id = p.loan_id
GROUP BY l.loan_id, l.loan_amount, l.due_date
ORDER BY l.loan_id;
