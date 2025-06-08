----1. FILTER BY COST <800
select * from transport where cost<800
-- 2. List destinations in India
SELECT * FROM Destination WHERE country = 'India';

-- 3. Get all bookings with status Confirmed or Pending
SELECT * FROM Booking WHERE statuss IN ('Confirmed', 'Pending');

-- 4. Customers with phone number starting with 9876
SELECT * FROM Customer WHERE phone_no LIKE '9876%';

-- 5. List all transports with capacity greater than 50
SELECT * FROM Transport WHERE capacity > 50;

--AGGREGATE FUNCTIONS---

-- 6. Total amount received from payments
SELECT SUM(amount) FROM Payment WHERE payment_status = 'Received';

-- 7. Average price of destinations
SELECT AVG() FROM Destination;

-- 8. Count of each payment mode used
SELECT payment_mode, COUNT(*) FROM Payment GROUP BY payment_mode;

-- 9. Maximum transport capacity
SELECT MAX(capacity) FROM Transport;

-- 10. Count of bookings per status
SELECT statusS, COUNT(*) FROM Booking GROUP BY statuss;

-- 11. Get customer names with their bookings
SELECT c.uname, b.booking_id, b.status
FROM Customer c
JOIN Booking b ON c.cus_id = b.customer_id;

-- 12. Destination name with transport type used
SELECT d.destination_name, t.transport_type
FROM Booking b
JOIN Destination d ON b.destination_id = d.destination_id
JOIN Transport t ON b.transport_id = t.transport_id;

-- 13. Payment details with customer names
SELECT c.uname, p.amount, p.payment_mode
FROM Payment p
JOIN Customer c ON p.customer_id = c.cus_id;

-- 14. All customers and their tickets (even if ticket missing)
SELECT c.uname, t.ticket_id, t.status
FROM Customer c
LEFT JOIN Ticket t ON c.cus_id = t.customer_id;

-- 15. Bookings without payment (anti-join style)
SELECT b.*
FROM Booking b
LEFT JOIN Payment p ON b.customer_id = p.customer_id
WHERE p.payment_no IS NULL;

-- 16. Customers whose names start with 'A'
SELECT * FROM Customer WHERE uname LIKE 'A%';

-- 17. Emails ending with '.com'
SELECT * FROM Customer WHERE email LIKE '%.com';

-- 18. Destinations with name containing 'an'
SELECT * FROM Destination WHERE destination_name LIKE '%an%';

-- 19. Customers who booked to the most expensive destination
SELECT * FROM Customer WHERE cus_id IN (
    SELECT customer_id FROM Booking WHERE destination_id = (
        SELECT destination_id FROM Destination ORDER BY price DESC LIMIT 1
    )
);

-- 20. Count of bookings per customer
SELECT uname, (
    SELECT COUNT(*) FROM Booking WHERE customer_id = c.cus_id
) AS total_bookings
FROM Customer c;

-- 21. Transport providers used for Confirmed bookings
SELECT DISTINCT provider FROM Transport
WHERE transport_id IN (
    SELECT transport_id FROM Booking WHERE status = 'Confirmed'
);

-- 22.Create log table first
CREATE TABLE Booking_Log (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    action_time DATETIME DEFAULT GETDATE(),
    action_type VARCHAR(50)
);

-- Trigger to log inserts
CREATE TRIGGER trg_log_booking_insert
ON Booking
AFTER INSERT
AS
BEGIN
    INSERT INTO Booking_Log (customer_id, action_type)
    SELECT customer_id, 'Inserted' FROM inserted;
END;
--23---
SELECT 
    COUNT(CASE WHEN status = 'Confirmed' THEN 1 END) AS Confirmed_Bookings,
    COUNT(CASE WHEN status = 'Pending' THEN 1 END) AS Pending_Bookings,
    COUNT(CASE WHEN status = 'Cancelled' THEN 1 END) AS Cancelled_Bookings
FROM Booking;

--24.---
CREATE VIEW CustomerBookingSummary AS
SELECT 
    c.cus_id,
    c.uname AS customer_name,
    b.booking_id,
    d.destination_name,
    t.transport_mode,
    b.status
FROM Customer c
JOIN Booking b ON c.cus_id = b.customer_id
JOIN Destination d ON b.destination_id = d.destination_id
JOIN Transport t ON b.transport_id = t.transport_id;

-- 25. Show all customers with IDs between 105 and 115 and amount > 1000
SELECT c.uname, p.amount
FROM Customer c
JOIN Payment p ON c.cus_id = p.customer_id
WHERE c.cus_id BETWEEN 105 AND 115 AND p.amount > 1000;

