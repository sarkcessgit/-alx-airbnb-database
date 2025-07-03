-- 🔹 Initial unoptimized query: joins bookings with users, properties, and payments
SELECT 
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at >= '2023-01-01'
  AND pay.amount > 100;

-- 🔍 Analyze performance of the initial query
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at >= '2023-01-01'
  AND pay.amount > 100;

-- ✅ Refactored query: selects only required columns and assumes indexing
EXPLAIN ANALYZE
SELECT 
    b.id,
    b.created_at,
    u.name,
    p.name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at >= '2023-01-01'
  AND pay.amount > 100;
