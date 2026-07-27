-- TC_SQL_010:  Verify actors assigned to each film

-- Main Query
SELECT
  a.actor_id,
  CONCAT(a.first_name, ' ', a.last_name) AS actor_name,
  f.film_id,
  f.title AS film_title
FROM actor a
INNER JOIN film_actor fa 
ON a.actor_id = fa.actor_id
INNER JOIN film f
ON fa.film_id = f.film_id
ORDER BY f.title, actor_name;

-- Supporting Query
SELECT
  film_id,
  actor_id
FROM film_actor
ORDER BY film_id, actor_id;
