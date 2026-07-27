-- TC_SQL_009: Verify rental history with customer names

-- Main Query

SELECT r.rental_id, r.rental_date, c.customer_id
CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
ORDER BY rental_date;

-- Supporting Query

SELECT 
  customer_id,
  first_name,
  last_name
FROM customer
WHERE customer_id = 599;
