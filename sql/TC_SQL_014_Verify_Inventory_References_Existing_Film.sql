-- TC_SQL_014: Verify inventory references existing film

SELECT i.inventory_id, i.film_id
FROM inventory i
LEFT JOIN film f
ON i.film_id = f.film_id
WHERE f.film_id IS NULL;
