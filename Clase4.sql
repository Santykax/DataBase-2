#1) Show title and special_features of films that are PG-13
SELECT title, special_features
FROM film 
WHERE film.rating = "PG-13";

#2) Get a list of all the different films duration.
SELECT DISTINCT length
FROM film
ORDER BY length;

#3) Show title, rental_rate and replacement_cost of films that have replacement_cost from 20.00 up to 24.00
SELECT title, rental_rate, replacement_cost
FROM film 
WHERE replacement_cost BETWEEN 20.00 AND 24.00;

#4) Show title, category and rating of films that have 'Behind the Scenes'   as special_features 
SELECT f.title, c.name, f.rating
FROM film f, film_category fc, category c
WHERE f.film_id = fc.film_id 
AND fc.category_id = c.category_id 
AND special_features LIKE "%Behind the Scenes%";

#5) Show first name and last name of actors that acted in 'ZOOLANDER FICTION'
SELECT a.first_name, a.last_name
FROM actor a, film_actor fa, film f
WHERE a.actor_id = fa.actor_id 
AND fa.film_id = f.film_id 
AND f.title = "ZOOLANDER FICTION";

#6) Show the address, city and country of the store with id 1
SELECT address, city, country, store_id
FROM address, city, country, store
WHERE store.store_id = 1 
AND store.address_id = address.address_id 
AND address.city_id = city.city_id 
AND city.country_id = country.country_id;

#7) Show pair of film titles and rating of films that have the same rating.
SELECT f1.title, f2.title, f1.rating, f2.rating
FROM film f1, film f2
WHERE f1.rating = f2.rating;

#8) Get all the films that are available in store id 2 and the manager first/last name of this store (the manager will appear in all the rows).
SELECT DISTINCT f.title, st.first_name, st.last_name
FROM film f, store s, inventory i, staff st
WHERE f.film_id = i.film_id
AND i.store_id = s.store_id
AND s.manager_staff_id = st.staff_id
AND s.store_id = 2;