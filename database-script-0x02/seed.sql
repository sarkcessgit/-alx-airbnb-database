-- Insert Users
INSERT INTO users (first_name, last_name, email, phone, password_hash)
VALUES
('Alice', 'Walker', 'alice@example.com', '1234567890', 'hashed_pw_1'),
('Bob', 'Smith', 'bob@example.com', '2345678901', 'hashed_pw_2'),
('Carol', 'Jones', 'carol@example.com', '3456789012', 'hashed_pw_3');

-- Insert Properties (hosted by Alice and Bob)
INSERT INTO properties (host_id, title, description, address, city, state, country, price_per_night)
VALUES
(1, 'Cozy Cottage', 'A charming cottage in the countryside', '123 Maple Lane', 'Asheville', 'NC', 'USA', 120.00),
(2, 'Urban Loft', 'Modern loft with city views', '456 Downtown Ave', 'Chicago', 'IL', 'USA', 180.00);

-- Insert Bookings (Carol books properties)
INSERT INTO bookings (property_id, guest_id, start_date, end_date, total_price)
VALUES
(1, 3, '2025-07-01', '2025-07-05', 480.00),
(2, 3, '2025-08-10', '2025-08-12', 360.00);

-- Insert Payments
INSERT INTO payments (booking_id, payment_date, amount, payment_method, status)
VALUES
(1, '2025-06-25', 480.00, 'credit_card', 'completed'),
(2, '2025-07-20', 360.00, 'paypal', 'completed');

-- Insert Reviews
INSERT INTO reviews (property_id, guest_id, rating, comment)
VALUES
(1, 3, 5, 'Wonderful stay! Very peaceful and clean.'),
(2, 3, 4, 'Great location, a bit noisy at night.');

