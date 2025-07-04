CREATE INDEX idx_name
ON Property (name);

CREATE INDEX idx_first_name
ON User (first_name);

CREATE INDEX idx_user
ON Booking (user_id);

CREATE INDEX idx_amount
ON Payment (amount);

CREATE INDEX idx_email
ON User (email);

CREATE INDEX idx_property
ON Booking (property_id);

CREATE INDEX idx_booking
ON Payment (booking_id);

EXPLAIN SELECT user_id, COUNT(*) AS user_total_booking
FROM booking
GROUP BY user_id;

EXPLAIN SELECT u.first_name, b.booking_id
FROM User u
LEFT JOIN booking b ON u.user_id = b.user_id
UNION
SELECT u.first_name, b.booking_id
FROM User u
RIGHT JOIN booking b ON u.user_id = b.user_id;

EXPLAIN ANALYZE SELECT * FROM Property WHERE name= 'Cozy Studio Flat' ;