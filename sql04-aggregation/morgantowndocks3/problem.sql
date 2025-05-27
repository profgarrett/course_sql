-- SQL 4 aggregation questions 
-- https://profgarrett.github.io/course_eda/sql02-select.html
--
-- Updated May 27, 2025



------------------------------------------------------------------------------------------------
-- Lecture Questions
------------------------------------------------------------------------------------------------


------------------------------------------------
 -- 1) Aggregation Functions
 
-- 1a) Give the sum, count, and average of the tmax field.
-- Remove null tmax values.
SELECT 
FROM daily
WHERE 

-- 1b) Find the number of unique station names
-- Remove null station names.
SELECT 
FROM daily
WHERE 

-- 1c) Find the smallest and largest tmax values for the year 2000.
-- Remove null tmax values.
SELECT 
FROM daily


-- 1d) Find the total snow for the year 2000 in January.
-- Remove null snow values.
SELECT 
FROM daily
WHERE 


-- 1e) Find the number of unique rain values.
SELECT 
FROM daily
WHERE 



------------------------------------------------
 -- 2 Group By

-- 2a) Find the average tmax for each year.
SELECT year, 
FROM daily
WHERE tmax IS NOT NULL
;

-- 2b) Find the number of successful (not null) tmax values for each year.
SELECT year, 
FROM daily

;

-- 2b) Find the number unsuccessful (null) tmax values for each year.
-- Sort by the largest value first.
SELECT year,
FROM daily
WHERE tmax IS NULL
;

-- 2d) Why do we have more than 365 rows in 1940? Show the count of records 
-- for each month in 1940. What is the problem?
SELECT 
FROM daily
WHERE  
;


------------------------------------------------
 -- 2 HAVING

-- 3a) What months in February have more than 28 records?
SELECT year, month, 
FROM daily

HAVING 
ORDER BY year, month;

-- 3b) What is the average tmax for January? Round to the nearest integer.
SELECT year, 
from daily


-- 3c) Which years have a January tmax average greater than this average?
SELECT year, 
FROM daily

ORDER BY year;

------------------------------------------------------------------------------------------------
-- Application Questions
------------------------------------------------------------------------------------------------

-- 1) Find the average tmax for each month
-- Exclude all NULL values. Order by month.
-- What month has the highest average tmax? Give your answer as a 01, 02, etc.



-- 2) Find the sum of all snow for each year
-- Exclude all NULL values. Order by year.
-- What year has the most snow? 



-- 3) What year has the highest average snow depth?
-- Exclude all NULL values. Order by average snow depth.




-- 4) Find the average tmax for each station.
-- Exclude all NULL values. Order by station name.
-- What is the average tmax for the station "Morgantown Lock and Dam, WV US"? 
-- Round your answer to a single decimal.



-- 5) Find the average rain for each year.
-- Exclude all NULL values. Order by rain average.
-- What is the highest average rain? Round to a single decimal.



-- 6) Find the average snow depth for each month.
-- Exclude all NULL values. Order by month.
-- What month has the *3rd* highest average snow depth? Give your answer as a 01, 02, etc.



-- 7) Find the count of days with over 1 inch of snowfall for each year.
-- Exclude all NULL values. Order by snowfall.
-- What year has the most days with over 1 inch of snowfall?



-- 8) Find which months have over 10 days with rain falling in 2020
-- Order by month.
-- Exclude all months that do not have 10 days of rain, meaning that you
-- will need to use a HAVING clause.
-- How many months have more than 10 days with rain in 2020?




-- 9) Find the average tmax for each month in 2020.
-- Exclude all NULL values. Order by month.
-- Exclude any months with an average tmax less than 10 (i.e., HAVING)
-- How many months are returned?
