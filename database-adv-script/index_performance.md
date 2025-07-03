-- Index for joining bookings to users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for joining bookings to properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for filtering and ordering bookings by date
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Optional: Index for searching properties by city
CREATE INDEX idx_properties_city ON properties(city);

-- Optional: Index for user email lookups (if commonly used)
CREATE INDEX idx_users_email ON users(email);

# Index Optimization Report

## 🎯 Objective
Improve query performance by adding indexes to frequently used columns in the `bookings`, `users`, and `properties` tables.

---

## 🔍 Target Query (Before Indexing)

```sql
SELECT * 
FROM bookings 
WHERE user_id = 42 
ORDER BY created_at DESC;

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_users_email ON users(email);

