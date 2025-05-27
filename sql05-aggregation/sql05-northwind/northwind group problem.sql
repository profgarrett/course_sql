-- SQL Script for analyzing data from Northwind DATABASE
-- Database from: https://github.com/jpwhite3/northwind-SQLite3/
-- Updated 1/17/24 by NDG


-- Help Resources & Code
--
-- Practice group by exercises
-- 		https://profgarrett.github.io/course_eda/sql05-aggregation.html
--
-- Functions
-- 		https://profgarrett.github.io/course_eda/sql04-functions.html


-- Employee Sample Code

-- Grab all employees
SELECT ? 
FROM ?;

-- How many total rows do we have?
SELECT ?
FROM employees;

-- How many unique titles?
SELECT ?
FROM employees;

-- How many people for each title?
SELECT ?
FROM employees
?;

-- Add a sort by title & count
SELECT title, count(*) as titleCount
FROM employees
GROUP BY title
ORDER BY ?;

-- Filter for North American, and a count < 3
SELECT title, count(*) as titleCount
FROM employees
?
GROUP BY title
?;



-- Q0
-- Show all row from Orders

-- Q1
-- How many unique cities do we ship through?

-- Q2
-- How many shipments have we made to each city? Sort by city (largest to smallest)

-- Q3
-- How many shipments have we made to each city in France? Sort by count 

-- Q4
-- How many shipments have we made to each city in France? Sort by count 
-- Only show cities with over 10 purchases

-- Q5
-- What is the average freight weight?

-- Q6
-- What is the average freight weight for France?

-- Q7
-- What is the average freight weight for year 2018 in France?

-- Q8
-- What is the average freight weight for EACH year. 

-- Q9
-- What is the average freight weight for EACH year. 
-- Order by Year. Round average to one decimal.

-- Q10
-- What is the average freight weight for EACH year. 
-- Also give the count of shipments
-- Only show for years with over 200 shipments
-- Order by Year. Round average to one decimal.

-- Q11
-- Same as above, but only include shipments to France
-- for years over 20 shipment count.

