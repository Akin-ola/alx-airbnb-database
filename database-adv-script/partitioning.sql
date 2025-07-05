CREATE TABLE partitioned_user (
    user_id CHAR(36) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    password_hash VARCHAR(255),
    phone_number VARCHAR(50) NULL,
    role ENUM('guest', 'host', 'admin')  NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY (user_id, email)
)
#Use hashing logic (via the key algorithm, based on MySQL’s internal function) on the user_id column.
#Evenly distribute the rows across 4 partitions based on that hash.
PARTITION BY KEY (user_id)
PARTITIONS 4;

#Copy detailes from our user table to the new partitioned table
INSERT INTO partitioned_user(user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
SELECT user_id, first_name, last_name, email, password_hash, phone_number, role, created_at FROM User;

#Rename the partitioned table to user.
RENAME TABLE User TO old_user, partitioned_user TO User;