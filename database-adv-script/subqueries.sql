#A query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT p_id, avg_rating
FROM (
    SELECT property_id AS p_id, AVG(rating) AS avg_rating
    FROM review
    GROUP BY property_id
) AS property_review
WHERE avg_rating > 4.0;

SELECT user_id, first_name
FROM User u
WHERE(
    SELECT COUNT(*)
    FROM Booking b
    WHERE u.user_id = b.user_id
) > 3;