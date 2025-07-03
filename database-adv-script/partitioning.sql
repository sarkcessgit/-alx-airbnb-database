-- Drop existing Booking table (if needed)
DROP TABLE IF EXISTS bookings CASCADE;

-- Recreate the parent bookings table as a partitioned table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    created_at TIMESTAMP,
    -- other columns as needed
    payment_status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Create child partitions by year
CREATE TABLE bookings_2022 PARTITION OF bookings
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Optional: Create indexes on child partitions
CREATE INDEX idx_bookings_2022_user_id ON bookings_2022(user_id);
CREATE INDEX idx_bookings_2023_user_id ON bookings_2023(user_id);
CREATE INDEX idx_bookings_2024_user_id ON bookings_2024(user_id);

-- Sample query to test performance on date range (using EXPLAIN ANALYZE)
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';
