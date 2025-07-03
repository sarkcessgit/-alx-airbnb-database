SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


