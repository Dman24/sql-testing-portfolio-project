-- TC_SQL_006: Verify number of films per rating

SELECT rating,
COUNT(*) AS film_count
FROM film
GROUP BY rating;
