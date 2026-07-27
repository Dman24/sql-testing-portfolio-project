-- TC_SQL_011: Verify no duplicate customer emails

-- Main Query
SELECT 
  email,
  COUNT(*) AS duplicate_count
FROM customer
GROUP BY email
HAVING COUNT(*) > 1;

-- Supporting Query
SELECT 
  customer_id,
  first_name,
  last_name,
  email
FROM customer
WHERE email = 'sample@email.com';
