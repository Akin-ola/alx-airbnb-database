    Join

Joins help to combine data from multiple tables into one result set.
    Types of Join
1. INNER JOIN-- It give only data that matches from multiple tables into one result set.
2. LEFT JOIN-- It retrieves all records from the left table and matching record from the right table.
3. RIGHT JOIN-- It retrieves all records from the right table and matching record from the left table.
4. FULL OUTER JOIN-- This is the UNION of both LEFT and RIGHT JOINS, it retrieve all records from the left and right table, it matches data that match from both and fill the rest with NULL.

    Subquery

Subquery is a query inside another SQL query, enclosed in parenthesis().
It can;
    Return a value or set of values
    Be used in different clauses like WHERE, SELECT, FROM, HAVING(IN)
Also we have Correlated Subquery which run once per row in outer query and provide result from each row.

    Aggregation and Window functions

Function	Description
ROW_NUMBER()	Sequential number per row
RANK()	Rank with gaps
DENSE_RANK()	Rank without gaps
NTILE(n)	Divide rows into n buckets
LAG()	Previous row’s value
LEAD()	Next row’s value
FIRST_VALUE()	First value in the partition
LAST_VALUE()	Last value in the partition
SUM()	Running/grouped total
AVG()	Running/grouped average
MIN()	Smallest value in window
MAX()	Largest value in window
COUNT()	Number of rows in window

The first syntax query the booking table and iterate all the bookkings while counting the 
#booking that belongs to each user (Window Function).
#While the second does exactly what we want which is to count in the background, list the 
#users and give their total number of bookings (Aggregation).

The second task can be done two ways or lets say three ways ;
    #ROW_NUMBER() -- assigns a unique rank to each row, even if two users have the same number of bookings.
    #So there will be no ties — the ranking will go like: 1, 2, 3, 4…
#In contrast:
    #RANK() skips numbers for ties (e.g., 1, 2, 2, 4).
    #DENSE_RANK() keeps it tight (e.g., 1, 2, 2, 3).
