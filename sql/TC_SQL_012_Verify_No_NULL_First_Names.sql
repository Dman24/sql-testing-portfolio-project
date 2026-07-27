-- TC_SQL_012: Verify no NULL first names

-- Main Query
SELECT 
  customer_id,
  first_name,
  last_name
FROM customer
WHERE first_name IS NULL;

-- Supporting Query
SELECT customer_id, first_name, last_name
FROM customer
ORDER BY customer_id;
