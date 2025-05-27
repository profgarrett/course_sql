-- SQL questions for Sakila Database
--
-- Updated May 27, 2025



------------------------------------------------------------------------------------------------
-- Lecture Questions
------------------------------------------------------------------------------------------------


------------------------------------------------
 -- 1) INNER JOIN
 
-- 1a) Return rental information & staff first name


-- 1b) Same as above, but use an alias for each table

 
-- 1c) Return customers and rental date


-- 1d) Return rental date, staff first name, and customer first name.


 -- 1f) Same as above, but use AS to rename customer and staff names


 
 -- 1g) Now group the results to find the total number of rentals per staff member and customer


 -- 1h) Now group the results to find the total number of rentals per staff member and customer, 
 -- but only show those with more than 30 rentals. Sort by the total rentals




------------------------------------------------
 -- 2 OUTER JOIN

-- 2a) Find all movies that have a matching inventory
-- Show the title and inventory ID


-- 2b) Group the prior query to find the total copies per movie


-- 2c) Same as 2a, but show all  films and inventory ids, even those that have no inventory
-- Use a LEFT JOIN


-- 3d) Modify above above to only show films with no matching inventory
-- Use WHERE and a NULL check


-- 2c) Now group the 2c query to find the total copies per movie, even those that have no inventory





------------------------------------------------------------------------------------------------
-- Application Questions
------------------------------------------------------------------------------------------------


-- 1) Find all movies that have been rented using an INNER JOIN
-- Hint: we need to go through the film and rental tables
-- Show the title and rental date, and order by rental date and inventory id
-- What is the title of the 4th movie in the list?


-- 2) Group the prior query to find the total number of rentals per movie
-- Sort by total rentals in descending order
-- What is the title of the movie with the most rentals?


-- 3) Find all films and their language using an INNER JOIN
-- Show the title and language name
-- Filter out all films that are in English
-- How many films are not in English?


-- 4) Group the prior query to find the total number of films per language
-- Show the language name and the number of films
-- What is the most common language besides English?


-- 5) Modify the prior to find all languages and the number of films, even those with no films
-- Use a LEFT JOIN
-- How many languages have no films?

-- 6) Find all films and their actors using an INNER JOIN
-- Show the title and actor first and last name
-- You will need to go from film, to the film_actor,  and then the actor table
-- Use all  inner joins.
-- What is the title of the 11th movie in the list?


-- 7) Now we will reverse the prior query to find all actors and their films.
-- Show the first and last name of the actor, and the title of the film
-- Start with the actor table, then go to film_actor, and then the film table
-- Use all inner joins.
-- What is the title of the 5th row film?


-- 8) Now we will group the prior query to find the total number of films per actor
-- Show the first and last name of the actor, and the number of films
-- Sort by the number of films in descending order
-- What is the first name of the actor with the most films?


-- 9) We will now modify the prior to find all actors without a matching film.
-- Use a LEFT JOIN
-- Show the first and last name of the actor
-- How many actors have no films?


-- 10) Find each film's category using an INNER JOIN
-- Show the title and category name
-- You will need to go from film, to the film_category, and then the category table
-- What is the title of the 3rd movie in the list?
