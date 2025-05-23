-- SQL questions 
-- https://profgarrett.github.io/course_eda/sql02-select.html
--
-- Updated May 23, 2025



------------------------------------------------------------------------------------------------
-- Lecture Questions
------------------------------------------------------------------------------------------------


------------------------------------------------
 -- 1) SELECT & FROM
 
-- 1a) Return all rows from the daily table. 


-- 1b) Return temperature fields (those starting with t)


-- 1c) Return tmax renamed as "temperature measure date"


-- 1d) Return the field that has a space in its name by surrounding it with `backticks`. Rename it.

 
 
------------------------------------------------
 -- 2 ORDER BY and DISTINCT

-- 2a) Return the max temperature ordered from highest to lowest
SELECT tmax 
FROM daily 

-- 2b) Return the max temperature ordered from lowest to highest.
--   Notice the NULLs come first!
SELECT tmax 
FROM daily 

-- 2c) Return the unique max temperature ordered from highest to lowest
SELECT  tmax 
FROM daily 

-- 2d) Return the unique max temperature ordered from lowest to highest.
--   Notice the NULLs come first!
SELECT  tmax 
FROM daily 

-- 2e) Return the unique station names alphabetically


-- 2f) Return the unique snow depth from largest to smallest
SELECT *
FROM daily 



------------------------------------------------ 
 -- 3 WHERE 
  
-- 3a) Return all dates with rain.
SELECT date, rain 
FROM daily

-- 3b) Return all dates *without* values  for snow depth (i.e., NULL)
SELECT *
FROM daily

-- 3c) Return meaurements at MORGANTOWN LOCK AND DAM, WV US
-- Remember to use 'single quotes' for values. These are different from `backticks`, which are used for field or 
-- tables with a space in their name.
SELECT *
FROM  daily


-- 3d) Return meaurements not at MORGANTOWN LOCK AND DAM, WV US
SELECT *
FROM  daily


-- 3e) Return meaurements at any site with the work MORGANTOWN in its name.
SELECT *
FROM  daily


-- 3f) Return all rows with a temperature between 60 and 70.
SELECT *
FROM daily


-- 3g) Return all rows with a temperature of 60, 70, or 80. 
SELECT *
FROM daily


-- 3h) Return all rows with rain of 0 and a temperature above 95.
SELECT *
FROM daily


-- 3i) Return all rows without a minimum temperature VALUE
SELECT date, tmin
FROM daily


-- 3j) Return all rows with a snow depth above 1.23
SELECT *
FROM daily


------------------------------------------------------------------------------------------------
-- Application Questions
------------------------------------------------------------------------------------------------


-- 1) How many days had over 1/10 of an inch of snow with temperature over freezing? 


-- 2) How many days have NULL values for tMax in 1930?


-- 3) How many unique station names are in the dataset?


-- 4) What is the lowest minimum temperature in 2000?


-- 5) What is the lowest minimum temperature in 2000-2010?
-- NOTE: Include both 2000 and 2010.


-- 6) How many days had over 1/10 of an inch of snow while the maximum temperature was exactly 31 degrees? 


-- 7) How many days have NULL values for tMin in 1950?


-- 8) How many unique years are in the dataset?

-- 9) What is the highest maximum temperature between 1990-1995? 


-- 10) What is the month with the highest snow depth in 2000? Note, answer with just the number,
-- using no leading zeros. I.E., 06 would be 6.




