-- SQL 3 Functions questions 
-- https://profgarrett.github.io/course_eda/sql02-select.html
--
-- Updated May 23, 2025



------------------------------------------------------------------------------------------------
-- Lecture Questions
------------------------------------------------------------------------------------------------


------------------------------------------------
 -- 1) Text Functions
 
-- 1a) Give station name in uppercase
SELECT 
FROM daily;

-- 1b) Give station name in lowercase
SELECT 
FROM daily;

-- 1c) Give the station name and state together in a single field.
SELECT 
FROM daily;

-- 1d) Give the station name and state together in a single field, 
-- but with a space and comma between them.
SELECT 
FROM daily;

-- 1e) Extract the year from the date field. 
-- Note that the date field is a string, not a date.
-- The date field is in the format YYYY-MM-DD.
SELECT 
FROM daily;

 -- 1e) Extract the month from the date field. 
-- Note that the date field is a string, not a date.
-- Add a sort, and show only unique values.
-- The date field is in the format YYYY-MM-DD.
SELECT 
FROM daily
ORDER BY month;



------------------------------------------------
 -- 2 Number Functions

-- 2a) What is the difference between the highest and lowest temperature each day?
-- Exclude all NULL values.
-- Sort by biggest difference first.
-- Give a name as t_diff
SELECT 
FROM daily 
WHERE 
ORDER BY ;

-- 2b) Return unique tmin sorted. Do you see a problem?
-- Figure out how to fix it by converting the tmin to a number.
SELECT 
FROM daily 
ORDER BY ;

-- 2c) Give the temperature as a ratio of tmax/tmin. (remove null values)
-- What issue do you see?
SELECT 
FROM daily 
WHERE 

-- 2d) Give the unique rain values rounded to the nearest integer.
SELECT 
FROM daily 
ORDER BY ;

-- 2c) Give the unique rain values rounded to a single decimal.
SELECT 
FROM daily 
ORDER BY 



------------------------------------------------------------------------------------------------
-- Application Questions
------------------------------------------------------------------------------------------------

-- 1) Return the station name and state together in a single field, 
-- with the state name in uppercase, the station name in lowercase,
-- and a space and comma between them.
-- What is the result for row 3 (sort by date)?


-- 2) Give the unique state names in uppercase, ordered alphabetically.
-- What is the result for row 2?


-- 3) Convert the tmax into celsius.
-- Exclude all NULL values.
-- What is the result for row 4 (sort by date)? Round to a single decimal

-- 4) Give a unique list of snow depth
-- Round to the nearest integer.
-- Exlude all NULL values.
-- What is the result for row 23 (sort by snowdepth_rounded)?


-- 5) Find all of the unique day values from the data field.
-- The date field is in the format YYYY-MM-DD.
-- Sort by day, and show only unique values.
-- What is the result for row 4?


-- 5) Find all of the unique day values from the data field.
-- The date field is in the format YYYY-MM-DD.
-- Sort by day, and show only unique values
-- Convert to an integer
-- What is the result for row 4?


-- 6) Show snow divided by the snow depth.
-- Exclude where snow is a NULL value
-- What is the result for row 3 (sort by snow_ratio)?


-- 7) Same as above, but round to a single decimal.
-- What is the result for row 6?
