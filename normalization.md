# Airbnb Clone – Database Normalization

## Objective
To ensure our Airbnb-like relational database is efficient, consistent, and free from unnecessary redundancy, we applied **normalization up to Third Normal Form (3NF)**.

---

## 🔹 First Normal Form (1NF)
**Rule**: Eliminate repeating groups and ensure atomicity.

**Steps Taken:**
- Ensured each attribute contains only **atomic (indivisible)** values.
- Removed multi-valued fields (e.g., property images or phone numbers are handled in separate tables or as JSON).
- All records are uniquely identifiable by **Primary Keys (PKs)**.

**Examples:**
- `User` table has atomic fields: `first_name`, `last_name`, `email`, etc.
- `Property` attributes like `address`, `city`, `price_per_night` are all atomic.

✅ **Achieved 1NF**

---

## 🔹 Second Normal Form (2NF)
**Rule**: Eliminate partial dependencies (i.e., no non-key attribute should depend on part of a composite key).

**Steps Taken:**
- All tables use **single-column primary keys**.
- All non-key attributes are **fully dependent** on the whole primary key.

**Examples:**
- `Booking` uses `booking_id` as PK, and all its attributes (e.g., `start_date`, `end_date`) depend entirely on `booking_id`.
- `Payment` is functionally dependent on `booking_id`, so it is stored in a separate table.

✅ **Achieved 2NF**

---

## 🔹 Third Normal Form (3NF)
**Rule**: Eliminate transitive dependencies (i.e., non-key attributes should not depend on other non-key attributes).

**Steps Taken:**
- No attribute in any table is **transitively dependent** on a non-key attribute.
- Ensured lookup values or derived data (e.g., location, pricing) are only stored once or in appropriate related tables.

**Examples:**
- `User` table stores only user-related attributes. Derived fields like "full name" can be generated in queries.
- `Property` stores `host_id` as FK — host data lives only in the `User` table.
- Reviews and Payments reference Bookings, not users or properties directly unless needed for the relationship.

✅ **Achieved 3NF**

---

## Summary

| Table      | Normalized To | Key Fixes Made                          |
|------------|---------------|------------------------------------------|
| User       | ✅ 3NF         | Atomic fields, user-only data            |
| Property   | ✅ 3NF         | Host_id as FK, address fields separated |
| Booking    | ✅ 3NF         | No derived data, relates to Property/User |
| Payment    | ✅ 3NF         | One-to-one with Booking only             |
| Review     | ✅ 3NF         | No redundancy, links only to necessary FKs |

---

## Final Note

The schema is now fully normalized to **Third Normal Form**, ensuring:
- **Minimal redundancy**
- **Improved integrity**
- **Scalability** for future Airbnb-like features


