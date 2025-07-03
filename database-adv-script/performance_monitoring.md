# Database Performance Monitoring & Refinement Report

## 🎯 Objective
Monitor and improve database performance using `EXPLAIN ANALYZE` and schema/index optimizations.

---

## 🧪 Step 1: Monitor Query Performance

### Frequently Used Query 1:
```sql
SELECT * 
FROM bookings 
WHERE user_id = 101 
ORDER BY created_at DESC 
LIMIT 10;
