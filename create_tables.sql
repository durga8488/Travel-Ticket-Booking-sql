---CUSTOMER TABLE---

create table customer
(customer_id int primary key,
uname varchar(30),
email varchar(50),
phone_no bigint);
select*from customer

--DESTINATION TABLE--

CREATE TABLE Destination (
    destination_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    description TEXT);

-- Destination_Transport_Cost --
CREATE TABLE Destination_Transport_Cost (
    destination_id INT,
    transport_id INT,
    price DECIMAL(10,2),
	CITY_NAME VARCHAR(30),
    PRIMARY KEY (destination_id, transport_id),
    FOREIGN KEY (destination_id) REFERENCES Destination(destination_id),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id));

--TRANSPORT TABLE--

create table transport
(transport_id int primary key,
transport_type varchar(20), 
transport_name varchar(20),
capacity varchar(20));

--BOOKING TABLE--
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    destination_id INT,
    transport_id INT,
    booking_date DATE,
	statuss varchar(20),

    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (destination_id) REFERENCES Destination(destination_id),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id));

--TICKET TABLE CREATIOM--

 CREATE TABLE TICKET(
 TICKET_ID VARCHAR(10), 
 CUSTOMER_ID INT, CUSTOMER_NAME VARCHAR(50), 
 TICKET_STATUSS VARCHAR(30),
 FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID));

--CREATE TABLE PAYMENT---
CREATE TABLE Payment (
    payment_no INT PRIMARY KEY,
	customer_id int,
    payee_name VARCHAR(50),
    payment_mode VARCHAR(30),
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20)
	FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID));


