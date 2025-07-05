    Partitioning in SQL

Partitioning is the process of splitting a large table into smaller, more manageable pieces (called partitions), while still allowing you to interact with it as if it's a single table.
 
 In MySQL partitioning of table with foreign key restrain isnt allow, therefore I will be partitioning the user table by KEY Partitioning which is only supported by MySQL.

 KEY Partitioning is similar to hash partitioning but uses internal hash functions. It is useful when we want the DB to handle hashing automatically which is the case for testing and learning database.

 other type of partitioning includes;
    Range Partitioning
    List Partitioning
    Hash Partitioning.

    