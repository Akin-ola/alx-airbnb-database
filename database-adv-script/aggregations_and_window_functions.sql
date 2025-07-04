#The first syntax query the booking table and iterate all the bookkings while counting the 
#booking that belongs to each user (Window Function).
#While the second does exactly what we want which is to count in the background, list the 
#users and give their total number of bookings (Aggregation).
SELECT
    user_id,
    COUNT(*) OVER (PARTITION BY user_id ORDER BY booking_id) AS user_total_booking
FROM booking;

SELECT user_id, COUNT(*) AS user_total_booking
FROM booking
GROUP BY user_id;


#The second task can be done two ways or lets say three ways ;
    #ROW_NUMBER() -- assigns a unique rank to each row, even if two users have the same number of bookings.
    #So there will be no ties — the ranking will go like: 1, 2, 3, 4…
#In contrast:
    #RANK() skips numbers for ties (e.g., 1, 2, 2, 4).
    #DENSE_RANK() keeps it tight (e.g., 1, 2, 2, 3).
SELECT 
    property_id,
    total_booking,
    ROW_NUMBER() OVER (ORDER BY total_booking DESC) AS booking_rank
FROM(
    SELECT
        property_id,
        COUNT(*) AS total_booking
    FROM booking
    GROUP BY property_id
) AS property_booking_counts;

SELECT
    property_id,
    COUNT(*) AS total_booking,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM booking
GROUP BY property_id;


SELECT
    property_id,
    COUNT(*) AS total_booking,
    DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM booking
GROUP BY property_id;
