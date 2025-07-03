-- Index to optimize JOINs and filters on user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index to optimize JOINs on property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index to speed up ORDER BY queries on booking dates
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
