-- TC_SQL_015: Verify customers with multiple rentals

SELECT customer_id,
	   COUNT(*) AS rental_count
FROM rental
GROUP BY customer_id
HAVING COUNT(*) > 1;
