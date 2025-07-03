# Booking Table Partitioning Report

## 🎯 Objective
Improve query performance on the large `bookings` table by implementing range-based partitioning on the `start_date` column.

---

## 🛠️ Implementation
- Partitioned the `bookings` table by year using `start_date` as the partition key.
- Created separate child tables for years 2022, 2023, and 2024.
- Added indexes on `user_id` in each partition.

---

## 🧪 Performance Testing

### Query Tested
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';
