INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(UUID(), 'Tunde', 'Adebayo', 'tunde.adebayo@example.com','$2a$12$fs3t1tExbqLNHT4061XM3u3cElUW2TTmwoHOhsgACEM.wIEhIBnL2', '08034561234', 'guest'),
(UUID(), 'Zainab', 'Mohammed', 'zainab.mo@example.com', '$2a$12$fs3t1tExbqLNHT4061XM3u3cElUW2TTmwoHOhsgACEM.wIEhIBnL2', '08123456789', 'guest'),
(UUID(), 'David', 'Eze', 'david.eze@example.com', '$2a$12$fs3t1tExbqLNHT4061XM3u3cElUW2TTmwoHOhsgACEM.wIEhIBnL2', '07098765432', 'guest'),
(UUID(), 'Amaka', 'Okafor', 'amaka.okafor@example.com', '$2a$12$fs3t1tExbqLNHT4061XM3u3cElUW2TTmwoHOhsgACEM.wIEhIBnL2', '09011223344', 'guest'),
(UUID(), 'Samuel', 'Ajayi', 'samuel.ajayi@example.com', '$2a$12$fs3t1tExbqLNHT4061XM3u3cElUW2TTmwoHOhsgACEM.wIEhIBnL2', '08055667788', 'guest');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
(UUID(), '39219079-547e-11f0-a6b9-b07b25357867', 'Cozy Studio Flat', 'A compact, stylish studio apartment perfect for solo travelers.', 'Ikeja, Lagos', 15000.00),
(UUID(), '391f5fa1-547e-11f0-a6b9-b07b25357867', 'Beachside Bungalow', 'Enjoy the ocean breeze in this charming bungalow just steps from the beach.', 'Lekki, Lagos', 35000.00),
(UUID(), '39217a69-547e-11f0-a6b9-b07b25357867', 'Mountain View Cabin', 'A quiet escape in the hills with breathtaking views and fresh air.', 'Jos, Plateau', 20000.00),
(UUID(), '3921949a-547e-11f0-a6b9-b07b25357867', 'City Center Apartment', 'Stay in the heart of the city with easy access to restaurants and nightlife.', 'Abuja, FCT', 25000.00),
(UUID(), '39217a69-547e-11f0-a6b9-b07b25357867', 'Luxury Villa', 'Spacious villa with private pool, garden, and full-service amenities.', 'Enugu, Enugu State', 60000.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(UUID(), '81f58c8c-5480-11f0-a6b9-b07b25357867', '39219079-547e-11f0-a6b9-b07b25357867', '2025-07-10', '2025-07-15', 75000.00, 'confirmed'),
(UUID(), '81f5fdfd-5480-11f0-a6b9-b07b25357867', '391f5fa1-547e-11f0-a6b9-b07b25357867', '2025-08-01', '2025-08-03', 70000.00, 'pending'),
(UUID(), '81f60612-5480-11f0-a6b9-b07b25357867', '39217a69-547e-11f0-a6b9-b07b25357867', '2025-06-30', '2025-07-05', 100000.00, 'confirmed'),
(UUID(), '81f60c31-5480-11f0-a6b9-b07b25357867', '3921949a-547e-11f0-a6b9-b07b25357867', '2025-07-20', '2025-07-22', 50000.00, 'canceled'),
(UUID(), '81f61be5-5480-11f0-a6b9-b07b25357867', '39217a69-547e-11f0-a6b9-b07b25357867', '2025-07-01', '2025-07-04', 180000.00, 'confirmed');


INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
(UUID(), 'bb8a7a25-5482-11f0-a6b9-b07b25357867', 75000.00, 'credit_card'),
(UUID(), 'bb8ab532-5482-11f0-a6b9-b07b25357867', 70000.00, 'paypal'),
(UUID(), 'bb8abda7-5482-11f0-a6b9-b07b25357867', 100000.00, 'stripe'),
(UUID(), 'bb8ac5c3-5482-11f0-a6b9-b07b25357867', 50000.00, 'credit_card'),
(UUID(), 'bb8ad045-5482-11f0-a6b9-b07b25357867', 180000.00, 'stripe');


INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
(UUID(), 'property-uuid-1', 'user-uuid-1', 5, 'Absolutely loved my stay! The host was super responsive and the place was spotless.'),
(UUID(), 'property-uuid-2', 'user-uuid-2', 4, 'Great experience overall. Would have given 5 stars if the Wi-Fi was faster.'),
(UUID(), 'property-uuid-3', 'user-uuid-3', 3, 'Decent spot for a short stay, but it was a bit noisy at night.'),
(UUID(), 'property-uuid-4', 'user-uuid-4', 2, 'The location was good, but the room didn’t match the photos.'),
(UUID(), 'property-uuid-5', 'user-uuid-5', 1, 'Disappointed. The host canceled last minute and left me stranded.');


INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
(UUID(), '391f5fa1-547e-11f0-a6b9-b07b25357867', '39217a69-547e-11f0-a6b9-b07b25357867', 'Hi! I’m interested in booking your apartment. Is it available next weekend?'),
(UUID(), '39217a69-547e-11f0-a6b9-b07b25357867', '391f5fa1-547e-11f0-a6b9-b07b25357867', 'Yes, it’s available! Let me know if you have any questions.'),
(UUID(), '39218a98-547e-11f0-a6b9-b07b25357867', '39219079-547e-11f0-a6b9-b07b25357867', 'Hello, I just checked out. Thanks for hosting!'),
(UUID(), '39219079-547e-11f0-a6b9-b07b25357867', '39218a98-547e-11f0-a6b9-b07b25357867', 'Thanks for staying! Hope to host you again.'),
(UUID(), '3921949a-547e-11f0-a6b9-b07b25357867', '391f5fa1-547e-11f0-a6b9-b07b25357867', 'Can I reschedule my check-in time? Something came up.');