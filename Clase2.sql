CREATE DATABASE imdb

CREATE TABLE film 
( film_id INT(11) NOT NULL AUTO_INCREMENT, 
  title VARCHAR(20) NOT NULL,
  description VARCHAR(50), 
  release_year DATE NOT NULL,
  CONSTRAINT film_pk PRIMARY KEY (film_id)
); 

CREATE TABLE actor
( actor_id INT(11) NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30) NOT NULL,
  CONSTRAINT actor_pk PRIMARY KEY (actor_id)
);

CREATE TABLE film_actor
( actor_id INT(11) NOT NULL,
  film_id INT(11) NOT NULL)
 
ALTER TABLE film
	ADD last_update TIMESTAMP
		AFTER release_year;
		
ALTER TABLE actor
	ADD last_update TIMESTAMP
		AFTER last_name;

ALTER TABLE film_actor ADD 
  CONSTRAINT fk_actor
    FOREIGN KEY (actor_id)
    REFERENCES actor (actor_id);

ALTER TABLE film_actor ADD
	CONSTRAINT fk_film
		FOREIGN KEY (film_id)
		REFERENCES film (film_id)
		

INSERT INTO film(title, description, release_year, last_update) VALUES ("Pelicula1", "descripcion1", "2001-01-10",'2018-04-1 12:30:00');
INSERT INTO film(title, description, release_year, last_update) VALUES ("Pelicula2", "descripcion2", "2001-02-10",'2018-04-2 12:40:00');
INSERT INTO film(title, description, release_year, last_update) VALUES ("Pelicula3", "descripcion3", "2001-03-10",'2018-04-3 12:50:00');

INSERT INTO actor(first_name, last_name, last_update) VALUES ("nombre1", "apellido1", '2018-04-4 12:01:30');
INSERT INTO actor(first_name, last_name, last_update) VALUES ("nombre2", "apellido2", '2018-04-5 12:02:30');
INSERT INTO actor(first_name, last_name, last_update) VALUES ("nombre3", "apellido3", '2018-04-6 12:03:30');

INSERT INTO film_actor(actor_id, film_id) VALUES (1, 3);
INSERT INTO film_actor(actor_id, film_id) VALUES (2, 2);
INSERT INTO film_actor(actor_id, film_id) VALUES (3, 1);
