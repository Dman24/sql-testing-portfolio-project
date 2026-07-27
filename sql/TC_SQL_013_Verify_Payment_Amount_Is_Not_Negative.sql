-- PTC_SQL_013: Verify payment amount is not negative

SELECT *
FROM payment
WHERE amount < 0;
