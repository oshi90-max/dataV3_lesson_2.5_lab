USE sakila;

SELECT * from actor where first_name='Scarlett';

SELECT * from film
where rental_duration=0;

SELECT * from rental
where staff_id=1;

SELECT * from rental
where staff_id=2;

SELECT MIN(length) as min_duration, MAX(length) as max_duration
FROM film;

SELECT AVG(length), CONVERT(avg(length),time) as 'avg time'
FROM film;

SELECT count(distinct last_name) from actor; 

SELECT DATEDIFF(min(rental_date), max(rental_date))
from sakila.rental;

SELECT *, date_format(rental_date, '%M') AS 'month', 
date_format(rental_date, '%d') AS 'weekday'
FROM rental
LIMIT 20;

SELECT distinct(release_year) FROM film;

SELECT *
FROM film
WHERE 'title' LIKE 'ARMAGEDDON%';

SELECT *
FROM film
WHERE title LIKE '%APOLLO';


SELECT * FROM film
order by length DESC
LIMIT 10;

SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes';

 



