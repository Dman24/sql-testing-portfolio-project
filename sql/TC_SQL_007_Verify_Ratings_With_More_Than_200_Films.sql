-- TC_SQL_007: Verify ratings with more than 200 films

SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
HAVING COUNT(*) > 200;
