-- Base de Datos Sakila

-- Verificar si existe y luego usarla
CREATE DATABASE IF NOT EXISTS sakila; -- crea la base de datos si no existe
USE sakila; -- selecciona la base de datos

-- Ejercicio 1. Selecciona todos los nombres de las peliculas sin que aparezcan duplicados.

SELECT DISTINCT title AS titulo_pelicula
FROM film;

-- DISTINCT: Muestra cada valor solo una vez, evitando duplicados.
-- AS: Asigna un nombre más claro y comprensible a la columna que se muestra en el resultado.

-- Ejercicio 2. Muestra los nombres de todas las peliculas que tengan una clasificacion de "PG-13".
SELECT title AS titulo_pelicula, rating AS clasificacion
FROM film
WHERE rating = "PG-13"; 

-- =  : Se usa cuando queremos comparar un SOLO valor específico.
--      Ejemplo: rating = 'PG-13'

-- IN : Se usa cuando queremos filtrar por VARIOS posibles valores.
--      Ejemplo: rating IN ('PG', 'PG-13', 'G')

-- Ejercicio 3. Encuentra el titulo y la descripcion de todas las peliculas que contengan la palabra amazing en su descripcion.
SELECT title AS titulo_pelicula, description AS descripcion_pelicula
FROM film
WHERE description LIKE '%amazing%'; 

-- LIKE: Busca si una palabra o un patrón aparece en un texto.
-- %palabra%: Busca todos los registros donde la palabra aparezca en cualquier posición.

-- Ejercicio 4. Encuentra el titulo de todas las peliculas que tengan una duracion mayor a 120 minutos.
SELECT title AS titulo_pelicula
FROM film
WHERE length > 120
ORDER BY length DESC;

-- Podemos usar operadores comparativos: = : igual, != : distinto, > : mayor, < : menor, >= : mayor o igual, <= : menor o igual
-- ORDER BY: Ordena de mayor a menor. Ayuda a la visualizacion de los datos.

-- Ejercicio 5. Recupera los nombres de todos los actores.
SELECT first_name AS nombre_actor, last_name AS apellido_actor
FROM actor;

-- El nombre completo de un actor se compone de dos columnas: un nombre (first_name) y un apellido (last_name).

-- Ejercicio 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name AS nombre_actor, last_name AS apellido_actor
FROM actor
WHERE last_name LIKE '%Gibson%'; 

-- Ejercicio 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT actor_id AS id_actor, first_name AS nombre_actor, last_name AS apellido_actor
FROM actor
WHERE actor_id BETWEEN 10 and 20; 

-- BETWEEN: Selecciona valores dentro de un rango, incluyendo los extremos.

-- Ejercicio 8. Encuentra el titulo de las peliculas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificacion.
SELECT title AS titulo_pelicula, rating AS clasificacion
FROM film
WHERE rating NOT IN ("PG-13","R"); 

-- NOT IN: Excluye valores específicos ("PG-13" y "R"). 
-- VERSION LARGA: rating NOT IN ("PG-13") AND rating NOT IN ("R"); AND: combina condiciones; ambas deben cumplirse.

-- Ejercicio 9. Encuentra la cantidad total de peliculas en cada clasificacion de la tabla film y muestra la clasificacion junto con el recuento.
SELECT COUNT(film_id) AS total_peliculas, rating AS clasificacion
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;

-- COUNT: Funcion agregada. Cuenta cuantas filas hay en un conjunto de datos.
-- GROUP BY: Agrupa resultados según la columna usada con la funcion agregada.

-- Ejercicio 10. Encuentra la cantidad total de peliculas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de peliculas alquiladas.
SELECT c.customer_id AS id_cliente , c.first_name AS nombre_cliente, c.last_name AS apellido_cliente, COUNT(r.rental_id) AS total_peliculas_alquiladas
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY COUNT(r.rental_id) DESC;

-- LEFT JOIN: Combina los datos de customer y rental, mostrando todos los clientes, incluso si no han alquilado películas (en ese caso, COUNT será 0).

-- Ejercicio 11. Encuentra la cantidad total de peliculas alquiladas por categoria y muestra el nombre de la categoría junto con el recuento de alquileres.

SELECT c.name AS nombre_categoria, COUNT(r.rental_id) AS total_peliculas_alquiladas 
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id 
JOIN film f ON i.film_id = f.film_id 
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY COUNT(r.rental_id) DESC;

-- Primero identifico la información que quiero obtener (cantidad de películas alquiladas por categoría) y determino qué tablas necesito revisar en el diagrama.
-- Inicialmente determino: film, rental y category. 
-- Luego reviso las relaciones entre estas tablas para saber cómo unirlas correctamente, 
-- y también descubro si hay otras tablas involucradas que a primera vista no había considerado.
-- JOIN: devuelve solo los registros que tienen coincidencias en ambas tablas.

-- Ejercicio 12. Encuentra el promedio de duracion de las peliculas para cada clasificacion de la tabla film y muestra la clasificacion junto con el promedio de duracion.
SELECT AVG(length) AS duracion_promedio_peliculas, rating AS clasificacion
FROM film
GROUP BY rating;

-- AVG: función agregada para calcular el promedio.

-- Ejercicio 13. Encuentra el nombre y apellido de los actores que aparecen en la película con titulo "Indian Love"
SELECT a.first_name AS nombre_actor, a.last_name AS apellido_actor
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE title = "Indian Love";

-- Primero determino qué información quiero obtener: actor y film. 
-- Luego reviso el diagrama para identificar la relación entre ambas, hay una tabla intermedia film_actor.

-- Ejercicio 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
SELECT title AS titulo_pelicula
FROM film
WHERE description REGEXP 'dog' OR description REGEXP 'cat';

-- REGEXP: A diferencia de LIKE, no necesitas % al principio o al final si usas patrones adecuados.
-- Es más flexible, porque puedes combinar varios patrones, rangos de letras, opcionales, etc.

-- Ejercicio 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.
SELECT title AS titulo_peliculas, release_year AS año_lanzamiento
FROM film
WHERE release_year BETWEEN 2005 AND 2010
ORDER BY title ASC

-- Añadir ORDER BY ordena los resultados alfabéticamente, lo cual mejora la visualización.
