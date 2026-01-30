## Problem

Display the name of each borrower along with a comma-separated list of books they have borrowed.

Requirements:
- Book names must appear in alphabetical order.
- Borrowers should be sorted alphabetically.

SELECT 
    b.BorrowerName,
    GROUP_CONCAT(
        bk.BookName 
        ORDER BY bk.BookName 
        SEPARATOR ', '
    ) AS BooksBorrowed
FROM Borrowers b
JOIN Books bk
    ON b.BookID = bk.BookID
GROUP BY b.BorrowerName
ORDER BY b.BorrowerName;
