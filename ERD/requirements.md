# Entity-Relationship Diagram Requirements

## Objective

Design a relational data model and create an ER diagram for the ALX Airbnb Clone database, capturing all entities, their attributes, and the relationships among them.

## Identified Entities and Attributes

### 1. User
- `id` (Primary Key)
- `name`
- `email`
- `password`
- `phone_number`
- `created_at`

### 2. Property
- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `title`
- `description`
- `location`
- `price_per_night`
- `max_guests`
- `created_at`

### 3. Booking
- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `start_date`
- `end_date`
- `total_price`
- `created_at`

### 4. Review
- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `rating`
- `comment`
- `created_at`

### 5. Amenity
- `id` (Primary Key)
- `name`

### 6. PropertyAmenity
- `id` (Primary Key)
- `property_id` (Foreign Key → Property)
- `amenity_id` (Foreign Key → Amenity)

## Relationships

- A **User** can own multiple **Properties** (1:N)
- A **User** can make multiple **Bookings** (1:N)
- A **Property** can have multiple **Bookings** (1:N)
- A **User** can write multiple **Reviews** (1:N)
- A **Property** can have multiple **Reviews** (1:N)
- A **Property** can have many **Amenities**, and each **Amenity** can belong to many **Properties** (M:N via PropertyAmenity)

## ER Diagram

The visual ER diagram is to be created using [Draw.io](https://draw.io) or any similar tool and saved in this directory as:

- `ERD/er_diagram.drawio` (editable format)
- `ERD/er_diagram.png` or `ERD/er_diagram.pdf` (exported format)

Ensure the diagram uses crow's foot notation and clearly shows:
- Primary and foreign keys
- Entity names and attributes
- Relationship cardinalities (1:N, M:N)

## Directory Structure

