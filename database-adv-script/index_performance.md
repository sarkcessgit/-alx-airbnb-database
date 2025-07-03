database_index.sql
-- Index to speed up user_id lookups in bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index to optimize property_id joins in bookings
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index to improve sorting/filtering by booking date
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
