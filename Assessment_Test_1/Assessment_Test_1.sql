-- QUESTION 1
SELECT customer_id,
	sum(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING sum(amount) > 110;

-- QUESTION 2
SELECT count(*)
FROM film
WHERE title LIKE 'J%';

-- QUESTION 3
SELECT customer_id,
	first_name,
	last_name
FROM customer
WHERE first_name LIKE 'E%'
	AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1