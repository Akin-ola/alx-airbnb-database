-- Active: 1738097739548@@127.0.0.1@3306@airbnb
SELECT b.booking_id, u.user_id
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

SELECT p.name, r.comment
FROM Property p
LEFT JOIN review r ON p.property_id = r.property_id;


#During this task I found out that MySQL database does not support FULL OUTER JOIN directly.
#The query bellow continously threw error untill I troubleshoot with AI and find out.
SELECT u.first_name, b.booking_id
FROM User u
FULL OUTER JOIN booking b ON u.user_id = b.user_id;

#The solution to this problem is the UNION syntax which is use in combinning the LEFT JOIN and RIGHT JOIN
#to give us the FULL OUTER JOIN.
SELECT u.first_name, b.booking_id
FROM User u
LEFT JOIN booking b ON u.user_id = b.user_id
UNION
SELECT u.first_name, b.booking_id
FROM User u
RIGHT JOIN booking b ON u.user_id = b.user_id;
