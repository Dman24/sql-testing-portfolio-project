-- TC_SQL_008: Verify film categories

-- Main Query
SELECT f.film_id,
       f.title AS film_title,
       c.name AS category_name
FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
ORDER BY film_title;

-- Supporting Query
SELECT
  film_id,
  category_id
FROM film_category
ORDER BY film_id;
