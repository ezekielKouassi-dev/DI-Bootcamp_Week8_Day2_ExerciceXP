-- Exercice XP Day 2

-->>>>>>> Exercice2

-- 1. In the dvdrental database write a query to select all the columns from the “customer” table.
SELECT * FROM customer;

-- 2. Write a query to display the names (first_name, last_name) using an alias named “full_name”.
SELECT first_name || ' ' || last_name AS full_name FROM customer;

-- 3. Lets get all the dates that accounts were created. Write a query to select all the create_date from the “customer” table (there should be no duplicates).
SELECT DISTINCT create_date FROM customer;

-- 4. Write a query to get all the customer details from the customer table, it should be displayed in descending order by their first name.
SELECT * FROM customer  ORDER BY first_name DESC;

-- 5. Write a query to get the film ID, title, description, year of release and rental rate in ascending order according to their rental rate.
SELECT film_id, title, description, release_year, rental_rate FROM film ORDER BY rental_rate;

-- 6. Write a query to get the address, and the phone number of all customers living in the Texas district, these details can be found in the “address” table.
SELECT a.address, a.phone FROM address a LEFT JOIN city c ON a.city_id = c.city_id WHERE c.city = 'Texas';

-- 7. Write a query to retrieve all movie details where the movie id is either 15 or 150.
SELECT * FROM film WHERE film_id = 15 OR film_id = 150;

-- 8. Write a query which should check if your favorite movie exists in the database. Have your query get the film ID, title, description, length and the rental rate, these details can be found in the “film” table.
SELECT film_id, title, description, length, rental_rate FROM film WHERE title = 'Iron man 3';

-- 9. No luck finding your movie? Maybe you made a mistake spelling the name. Write a query to get the film ID, title, description, length and the rental rate of all the movies starting with the two first letters of your favorite movie.
SELECT film_id, title, description, length, rental_rate FROM film WHERE title LIKE 'Ir%';

-- 10. Write a query which will find the 10 cheapest movies.
SELECT * FROM film ORDER BY replacement_cost LIMIT 10;





