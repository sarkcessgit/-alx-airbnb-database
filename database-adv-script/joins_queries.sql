SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
ORDER BY
SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;


SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
FULL OUTER JOIN
SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;

