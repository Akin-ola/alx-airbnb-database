-- Active: 1738097739548@@127.0.0.1@3306@airbnb
CREATE TABLE User (
    user_id CHAR(36) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    password_hash VARCHAR(50),
    phone_number VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property (
    property_id CHAR(36) PRIMARY KEY,
    host_id CHAR(36),
    name VARCHAR(50),
    description TEXT,
    location VARCHAR(55),
    pricepernight DECIMAL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES User(user_id)
);

CREATE TABLE Booking (
    booking_id CHAR(36) PRIMARY KEY,
    property_id CHAR(36),
    user_id CHAR(36),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending','confirmed','canceled') NOT NULL DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property (property_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id)
)

ALTER TABLE property
MODIFY name VARCHAR(50) NOT NULL,
MODIFY description TEXT NOT NULL,
MODIFY location VARCHAR(55) NOT NULL,
MODIFY pricepernight DECIMAL NOT NULL;

ALTER TABLE User
MODIFY first_name VARCHAR(50) NOT NULL,
MODIFY last_name VARCHAR(50) NOT NULL,
MODIFY email VARCHAR(50) UNIQUE NOT NULL,
MODIFY password_hash VARCHAR(50) NOT NULL;

ALTER TABLE User
ADD role ENUM('guest', 'host', 'admin') NOT NULL AFTER phone_number

ALTER TABLE booking
MODIFY status ENUM('pending','confirmed','canceled') NOT NULL

CREATE TABLE Payment (
    payment_id CHAR(36) PRIMARY KEY,
    booking_id CHAR(36),
    amount DECIMAL NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
)

CREATE TABLE Review (
    review_id CHAR(36) PRIMARY KEY,
    property_id CHAR(36),
    user_id CHAR(36),
    rating INTEGER CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Message (
    message_id CHAR(36) PRIMARY KEY,
    sender_id CHAR(36),
    recipient_id CHAR(36),
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES User (user_id),
    FOREIGN KEY (recipient_id) REFERENCES User (user_id)
)

CREATE INDEX idx_email
ON User (email);

CREATE INDEX idx_property
ON Booking (property_id);

CREATE INDEX idx_booking
ON Payment (booking_id);