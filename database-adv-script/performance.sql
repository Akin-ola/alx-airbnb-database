
SELECT 
    u.last_name,
    b.booking_id,
    p.property_id,
    p.name,
    p.description,
    pay.amount
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
LEFT JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id
UNION
SELECT 
    u.last_name,
    b.booking_id,
    p.property_id,
    p.name,
    p.description,
    pay.amount
FROM User u
RIGHT JOIN Booking b ON u.user_id = b.user_id
RIGHT JOIN Property p ON b.property_id = p.property_id
RIGHT JOIN Payment pay ON pay.booking_id = b.booking_id;



EXPLAIN SELECT 
    u.last_name,
    b.booking_id,
    p.property_id,
    p.name,
    p.description,
    pay.amount
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
LEFT JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id
UNION
SELECT 
    u.last_name,
    b.booking_id,
    p.property_id,
    p.name,
    p.description,
    pay.amount
FROM User u
RIGHT JOIN Booking b ON u.user_id = b.user_id
RIGHT JOIN Property p ON b.property_id = p.property_id
RIGHT JOIN Payment pay ON pay.booking_id = b.booking_id;
