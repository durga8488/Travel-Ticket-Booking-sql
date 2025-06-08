----INSERT VALUES INTO CUSTOMER TABLE----
INSERT INTO Customer VALUES (101, 'Alice', 'alice101@example.com', 9876543101);
INSERT INTO Customer VALUES (102, 'Bob', 'bob102@example.com', 9876543102);
INSERT INTO Customer VALUES (103, 'Charlie', 'charlie103@example.com', 9876543103);
INSERT INTO Customer VALUES (104, 'David', 'david104@example.com', 9876543104);
INSERT INTO Customer VALUES (105, 'Eva', 'eva105@example.com', 9876543105);
INSERT INTO Customer VALUES (106, 'Frank', 'frank106@example.com', 9876543106);
INSERT INTO Customer VALUES (107, 'Grace', 'grace107@example.com', 9876543107);
INSERT INTO Customer VALUES (108, 'Hannah', 'hannah108@example.com', 9876543108);
INSERT INTO Customer VALUES (109, 'Ian', 'ian109@example.com', 9876543109);
INSERT INTO Customer VALUES (110, 'Jasmine', 'jasmine110@example.com', 9876543110);
INSERT INTO Customer VALUES (111, 'Kevin', 'kevin111@example.com', 9876543111);
INSERT INTO Customer VALUES (112, 'Laura', 'laura112@example.com', 9876543112);
INSERT INTO Customer VALUES (113, 'Mike', 'mike113@example.com', 9876543113);
INSERT INTO Customer VALUES (114, 'Nina', 'nina114@example.com', 9876543114);
INSERT INTO Customer VALUES (115, 'Oscar', 'oscar115@example.com', 9876543115);
INSERT INTO Customer VALUES (116, 'Penny', 'penny116@example.com', 9876543116);
INSERT INTO Customer VALUES (117, 'Quinn', 'quinn117@example.com', 9876543117);
INSERT INTO Customer VALUES (118, 'Rita', 'rita118@example.com', 9876543118);
INSERT INTO Customer VALUES (119, 'Steve', 'steve119@example.com', 9876543119);
INSERT INTO Customer VALUES (120, 'Tina', 'tina120@example.com', 9876543120);

---INSERT VALUES INTO DESTINATION TABLE----
INSERT INTO Destination VALUES (201, 'Delhi', 'Delhi', 'India', 'Capital city known for historical monuments and vibrant culture.');
INSERT INTO Destination VALUES (202, 'Mumbai', 'Maharashtra', 'India', 'Financial capital of India, famous for Bollywood and street food.');
INSERT INTO Destination VALUES (203, 'Paris', 'Île-de-France', 'France', 'The city of love, home to the Eiffel Tower and world-class museums.');
INSERT INTO Destination VALUES (204, 'New York', 'New York', 'USA', 'Famous for Times Square, Statue of Liberty, and Central Park.');
INSERT INTO Destination VALUES (205, 'Tokyo', 'Tokyo', 'Japan', 'High-tech city blending modern life with ancient traditions.');
INSERT INTO Destination VALUES (206, 'Bangalore', 'Karnataka', 'India', 'IT hub of India with a pleasant climate and garden spaces.');
INSERT INTO Destination VALUES (207, 'Sydney', 'New South Wales', 'Australia', 'Known for Sydney Opera House and beautiful beaches.');
INSERT INTO Destination VALUES (208, 'Dubai', 'Dubai', 'UAE', 'Luxury shopping, ultramodern architecture, and desert safaris.');
INSERT INTO Destination VALUES (209, 'Jaipur', 'Rajasthan', 'India', 'The Pink City known for forts, palaces, and vibrant bazaars.');
INSERT INTO Destination VALUES (210, 'Singapore', 'Central', 'Singapore', 'Clean, modern city-state known for Marina Bay and Sentosa.');

---INSERT VALUES INTO DESTINATION_TRANSPORT_COST---

INSERT INTO Destination_Transport_Cost VALUES (201, 301, 1000.00, 'New Delhi'); 

INSERT INTO Destination_Transport_Cost VALUES (201, 302, 2500.00, 'New Delhi');

INSERT INTO Destination_Transport_Cost VALUES (201, 303, 1500.00, 'New Delhi');

INSERT INTO Destination_Transport_Cost VALUES (202, 301, 1100.00, 'Mumbai');

INSERT INTO Destination_Transport_Cost VALUES (202, 302, 2600.00, 'Mumbai');

INSERT INTO Destination_Transport_Cost VALUES (202, 303, 1600.00, 'Mumbai');

INSERT INTO Destination_Transport_Cost VALUES (203, 301, 1050.00, 'Chennai');

INSERT INTO Destination_Transport_Cost VALUES (203, 302, 2400.00, 'Chennai');

INSERT INTO Destination_Transport_Cost VALUES (203, 303, 1400.00, 'Chennai');

INSERT INTO Destination_Transport_Cost VALUES (204, 302, 5500.00, 'Dubai'); 

INSERT INTO Destination_Transport_Cost VALUES (204, 303, 3000.00, 'Dubai'); 

INSERT INTO Destination_Transport_Cost VALUES (205, 302, 6200.00, 'Paris');

INSERT INTO Destination_Transport_Cost VALUES (206, 302, 7000.00, 'Tokyo');

INSERT INTO Destination_Transport_Cost VALUES (207, 301, 900.00, 'Panaji');

INSERT INTO Destination_Transport_Cost VALUES (207, 303, 1700.00, 'Panaji');

INSERT INTO Destination_Transport_Cost VALUES (208, 302, 5600.00, 'Singapore');

INSERT INTO Destination_Transport_Cost VALUES (209, 302, 8000.00, 'New York City');

INSERT INTO Destination_Transport_Cost VALUES (210, 302, 7900.00, 'London');

---INSERT INTO TRANSPORT TABLE---
INSERT INTO Transport VALUES (301, 'Bus', 'Volvo Express', 40,'GreenLine Travels');
INSERT INTO Transport VALUES (302, 'Train', 'Rajdhani Express', 200, 'Indian Railways');
INSERT INTO Transport VALUES (303, 'Flight', 'IndiGo 6E-203', 180, 'IndiGo');
INSERT INTO Transport VALUES (304, 'Flight', 'Air India AI-101', 220, 'Air India');
INSERT INTO Transport VALUES (305, 'Bus', 'KSRTC AC Sleeper', 36, 'KSRTC');
INSERT INTO Transport VALUES (306, 'Train', 'Shatabdi Express', 240, 'Indian Railways');
INSERT INTO Transport VALUES (307, 'Flight', 'SpiceJet SG-456', 190, 'SpiceJet');
INSERT INTO Transport VALUES (308, 'Bus', 'Neeta Travels', 34, 'Neeta Tours');
INSERT INTO Transport VALUES (309, 'Train', 'Duronto Express', 250, 'Indian Railways');
INSERT INTO Transport VALUES (310, 'Flight', 'Vistara UK-878', 185, 'Vistara');

UPDATE Transport SET cost = 500.00 WHERE transport_id = 301;
UPDATE Transport SET cost = 750.00 WHERE transport_id = 302;
UPDATE Transport SET cost = 900.00 WHERE transport_id = 303;
UPDATE Transport SET cost = 650.00 WHERE transport_id = 304;
UPDATE Transport SET cost = 1100.00 WHERE transport_id = 305;
UPDATE Transport SET cost = 850.00 WHERE transport_id = 306;
UPDATE Transport SET cost = 1200.00 WHERE transport_id = 307;
UPDATE Transport SET cost = 1000.00 WHERE transport_id = 308;
UPDATE Transport SET cost = 950.00 WHERE transport_id = 309;
UPDATE Transport SET cost = 1050.00 WHERE transport_id = 310;

----INSERT INTO BOOIKING---
INSERT INTO Booking VALUES (1, 101, 201, 301, '2025-05-01', 'Confirmed');
INSERT INTO Booking VALUES (2, 102, 201, 302, '2025-05-02', 'Pending');
INSERT INTO Booking VALUES (3, 103, 202, 303, '2025-05-03', 'Confirmed');
INSERT INTO Booking VALUES (4, 104, 202, 304, '2025-05-04', 'Cancelled');
INSERT INTO Booking VALUES (5, 105, 203, 305, '2025-05-05', 'Pending');
INSERT INTO Booking VALUES (6, 106, 203, 306, '2025-05-06', 'Confirmed');
INSERT INTO Booking VALUES (7, 107, 204, 307, '2025-05-07', 'Cancelled');
INSERT INTO Booking VALUES (8, 108, 204, 308, '2025-05-08', 'Confirmed');
INSERT INTO Booking VALUES (9, 109, 205, 309, '2025-05-09', 'Pending');
INSERT INTO Booking VALUES (10, 110, 205, 310, '2025-05-10', 'Confirmed');
INSERT INTO Booking VALUES (11, 111, 206, 301, '2025-05-11', 'Pending');
INSERT INTO Booking VALUES (12, 112, 206, 302, '2025-05-12', 'Confirmed');
INSERT INTO Booking VALUES (13, 113, 207, 303, '2025-05-13', 'Cancelled');
INSERT INTO Booking VALUES (14, 114, 207, 304, '2025-05-14', 'Pending');
INSERT INTO Booking VALUES (15, 115, 208, 305, '2025-05-15', 'Confirmed');
INSERT INTO Booking VALUES (16, 116, 208, 306, '2025-05-16', 'Cancelled');
INSERT INTO Booking VALUES (17, 117, 209, 307, '2025-05-17', 'Confirmed');
INSERT INTO Booking VALUES (18, 118, 209, 308, '2025-05-18', 'Pending');
INSERT INTO Booking VALUES (19, 119, 210, 309, '2025-05-19', 'Confirmed');
INSERT INTO Booking VALUES (20, 120, 210, 310, '2025-05-20', 'Cancelled');

 --INSERT INTO TICKET TABLE---
INSERT INTO Ticket VALUES ('TK01', 101, 'Alice', 'Confirmed');
INSERT INTO Ticket VALUES ('TK02', 102, 'Bob', 'Pending');
INSERT INTO Ticket VALUES ('TK03', 103, 'Charlie', 'Confirmed');
INSERT INTO Ticket VALUES ('TK04', 104, 'David', 'Cancelled');
INSERT INTO Ticket VALUES ('TK05', 105, 'Eva', 'Pending');
INSERT INTO Ticket VALUES ('TK06', 106, 'Frank', 'Confirmed');
INSERT INTO Ticket VALUES ('TK07', 107, 'Grace', 'Cancelled');
INSERT INTO Ticket VALUES ('TK08', 108, 'Hannah', 'Confirmed');
INSERT INTO Ticket VALUES ('TK09', 109, 'Ian', 'Pending');
INSERT INTO Ticket VALUES ('TK10', 110, 'Jasmine', 'Confirmed');
INSERT INTO Ticket VALUES ('TK11', 111, 'Kevin', 'Pending');
INSERT INTO Ticket VALUES ('TK12', 112, 'Laura', 'Confirmed');
INSERT INTO Ticket VALUES ('TK13', 113, 'Mike', 'Cancelled');
INSERT INTO Ticket VALUES ('TK14', 114, 'Nina', 'Pending');
INSERT INTO Ticket VALUES ('TK15', 115, 'Oscar', 'Confirmed');
INSERT INTO Ticket VALUES ('TK16', 116, 'Penny', 'Cancelled');
INSERT INTO Ticket VALUES ('TK17', 117, 'Quinn', 'Confirmed');
INSERT INTO Ticket VALUES ('TK18', 118, 'Rita', 'Pending');
INSERT INTO Ticket VALUES ('TK19', 119, 'Steve', 'Confirmed');
INSERT INTO Ticket VALUES ('TK20', 120, 'Tina', 'Cancelled');

---INSERT INTO PAYMENT---
INSERT INTO Payment VALUES (1, 101, 'Alice', 'Online Transaction', '2025-05-01', 1200.00, 'Received');
INSERT INTO Payment VALUES (2, 102, 'Bob', 'Cash', '2025-05-02', 950.00, 'Failed');
INSERT INTO Payment VALUES (3, 103, 'Charlie', 'Credit Card', '2025-05-03', 1100.00, 'Received');
INSERT INTO Payment VALUES (4, 104, 'David', 'Online Transaction', '2025-05-04', 1050.00, 'Received');
INSERT INTO Payment VALUES (5, 105, 'Eva', 'Credit Card', '2025-05-05', 980.00, 'Failed');
INSERT INTO Payment VALUES (6, 106, 'Frank', 'Cash', '2025-05-06', 1300.00, 'Received');
INSERT INTO Payment VALUES (7, 107, 'Grace', 'Online Transaction', '2025-05-07', 1150.00, 'Received');
INSERT INTO Payment VALUES (8, 108, 'Hannah', 'Credit Card', '2025-05-08', 1025.00, 'Failed');
INSERT INTO Payment VALUES (9, 109, 'Ian', 'Cash', '2025-05-09', 995.00, 'Received');
INSERT INTO Payment VALUES (10, 110, 'Jasmine', 'Online Transaction', '2025-05-10', 1250.00, 'Received');
INSERT INTO Payment VALUES (11, 111, 'Kevin', 'Credit Card', '2025-05-11', 1000.00, 'Failed');
INSERT INTO Payment VALUES (12, 112, 'Laura', 'Cash', '2025-05-12', 1100.00, 'Received');
INSERT INTO Payment VALUES (13, 113, 'Mike', 'Online Transaction', '2025-05-13', 1180.00, 'Failed');
INSERT INTO Payment VALUES (14, 114, 'Nina', 'Credit Card', '2025-05-14', 1200.00, 'Received');
INSERT INTO Payment VALUES (15, 115, 'Oscar', 'Cash', '2025-05-15', 950.00, 'Received');
INSERT INTO Payment VALUES (16, 116, 'Penny', 'Online Transaction', '2025-05-16', 1320.00, 'Failed');
INSERT INTO Payment VALUES (17, 117, 'Quinn', 'Credit Card', '2025-05-17', 1275.00, 'Received');
INSERT INTO Payment VALUES (18, 118, 'Rita', 'Cash', '2025-05-18', 1095.00, 'Failed');
INSERT INTO Payment VALUES (19, 119, 'Steve', 'Online Transaction', '2025-05-19', 1380.00, 'Received');
INSERT INTO Payment VALUES (20, 120, 'Tina', 'Credit Card', '2025-05-20', 1420.00, 'Received');

