# 21 Days SQL Problem-Solving Challenge

## 📌 Overview

This repository documents my completion of a 21-day SQL problem-solving challenge, focused on strengthening my ability to analyze business problems and translate them into structured SQL solutions.

The challenge progressed from foundational SQL concepts to advanced analytical patterns such as window functions, CTEs, conditional aggregation, subqueries, and data validation logic.

Rather than memorizing syntax, the goal was to develop:
	•	analytical thinking
	•	problem decomposition skills
	•	confidence reading unfamiliar questions
	•	clean, readable SQL solutions

Each day represents a real-world scenario commonly seen in finance, healthcare, product analytics, operations, and customer behavior analysis.


## 🎯 Objectives
	•	Build strong hands-on SQL proficiency
	•	Practice solving business-driven data problems
	•	Understand how SQL answers real stakeholder questions
	•	Improve logic and query readability
	•	Document analytical thinking clearly
	•	Create a portfolio-ready SQL repository


## 🧰 Tools & Environment
	•	SQL Dialect: MySQL / PostgreSQL-style
	•	Editor: VS Code / Online SQL Sandbox
	•	Version Control: Git & GitHub


## 🧠 SQL Concepts Covered

Throughout the challenge, I used:
	•	SELECT, WHERE, ORDER BY
	•	GROUP BY, HAVING
	•	INNER JOIN, LEFT JOIN
	•	Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
	•	Conditional logic (CASE WHEN)
	•	Subqueries
	•	Common Table Expressions (CTEs)
	•	Window functions (ROW_NUMBER, COUNT OVER, SUM OVER)
	•	Date functions
	•	String functions
	•	Regular expressions (REGEXP)
	•	Data cleaning & validation logic
	•	Business rule modeling


## 📂 Repository Structure

21-days-sql-challenge/
│
├── Day01_Borrower_Books.sql
├── Day02_Product_Pricing.sql
├── Day03_Loan_Repayment.sql
├── Day04_Text_Filtering.sql
├── Day05_Department_Salary.sql
├── Day06_Lowest_Price_Rating.sql
├── Day07_Second_Recent_Order.sql
├── Day08_Daily_Active_Users.sql
├── Day09_Confirmation_Rate.sql
├── Day10_Immediate_Delivery.sql
├── Day11_Employee_Manager.sql
├── Day12_Manager_Reports.sql
├── Day13_First_Year_Sales.sql
├── Day14_Monthly_Transactions.sql
├── Day15_Process_Time.sql
├── Day16_Remove_Duplicates.sql
├── Day17_Bus_Weight_Limit.sql
├── Day18_Unique_Number.sql
├── Day19_Most_Friends.sql
├── Day20_Email_Validation.sql
├── Day21_Player_Retention.sql
│
└── README.md

## Each SQL file contains:
	•	the business problem
	•	structured SQL solution
	•	readable formatting


## 📘 Daily Problem Summaries


**Day 1 — Borrower Book Analysis**

Used joins and aggregation to display borrowers and a comma-separated list of books borrowed.

Concepts:
JOIN · GROUP_CONCAT · GROUP BY · ORDER BY


**Day 2 — Product Price Categorization**

Categorized products into price ranges using CASE logic and counted distribution.

Concepts:
CASE · COUNT · GROUP BY


**Day 3 — Loan Repayment Risk Flags**

Created repayment and on-time payment indicators using aggregation and date logic.

Concepts:
LEFT JOIN · SUM · CASE · MAX · Risk flags


**Day 4 — Review Sentiment Filtering**

Identified positive reviews while excluding misleading phrases.

Concepts:
LIKE · NOT LIKE · LOWER · Text filtering


**Day 5 — Department Salary Analysis**

Calculated department average salaries and filtered using HAVING.

Concepts:
AVG · HAVING · JOIN · Aggregation


**Day 6 — Lowest Price with Rating Condition**

Found lowest priced products only when rating ≥ 4 and returned 0 when none qualified.

Concepts:
CASE inside MIN · COALESCE · LEFT JOIN


**Day 7 — Second Most Recent Order**

Used window functions and CTEs to handle ranking logic per customer.

Concepts:
ROW_NUMBER · COUNT OVER · CTE


**Day 8 — Daily Active Users**

Calculated unique active users per day over a 30-day period.

Concepts:
COUNT DISTINCT · Date filtering


**Day 9 — Confirmation Rate** 

Computed confirmation percentages using conditional aggregation.

Concepts:
CASE · AVG · COALESCE


**Day 10 — Immediate Delivery Percentage**

Analyzed customer behavior using subqueries and Boolean aggregation.

Concepts:
Subquery · MIN · AVG(Boolean)


**Day 11 — Employees with Missing Managers**

Identified employees whose managers had left the company.

Concepts:
NOT IN · Subqueries


**Day 12 — Managers with ≥ 5 Reports**

Used CTE + grouping to identify qualified managers.

Concepts:
CTE · GROUP BY · JOIN


**Day 13 — First-Year Product Sales**

Returned only sales from each product’s first year.

Concepts:
MIN · JOIN on multiple columns


**Day 14 — Monthly Transactions Report**

Calculated transaction volume and approved metrics.

Concepts:
Conditional aggregation · CASE · DATE_FORMAT


**Day 15 — Machine Processing Time**

Computed average processing time using timestamp differences.

Concepts:
CTE · MAX/MIN · AVG


**Day 16 — Remove Duplicate Emails**

Deleted duplicates while retaining smallest ID.

Concepts:
GROUP BY · DELETE · CTE


**Day 17 — Bus Weight Capacity**

Identified the last person who could board without exceeding capacity.

Concepts:
Running totals · Window functions


**Day 18 — Largest Unique Number**

Found the largest number appearing only once.

Concepts:
HAVING COUNT = 1 · MAX


**Day 19 — Most Popular Person**

Determined user with the highest number of friendships.

Concepts:
UNION ALL · Aggregation


**Day 20 — Email Validation**

Validated email formats using regular expressions.

Concepts:
REGEXP · Pattern matching


**Day 21 — Player Retention Analysis**

Calculated the fraction of users returning the day after first activity.

Concepts:
CTEs · Date arithmetic · Retention metrics



## 📈 Skills Demonstrated
	•	SQL problem solving from beginner → advanced
	•	Business logic translation
	•	Window function mastery
	•	Clean query structure
	•	Analytical reasoning
	•	Metric creation
	•	Data validation techniques
  

## 🚀 Key Takeaway

Consistency beats fear.

This challenge transformed SQL from something unfamiliar into a powerful analytical tool for answering real business questions.


## 📬 Connect
	•	LinkedIn: 
https://linkedin.com/in/ifeanyi-nwamaka
	•	GitHub:      https://github.com/IfeanyiOnyegbunam


⭐ If you found this repository helpful, feel free to star it.
