-- Create Database
CREATE DATABASE IF NOT EXISTS transport;
USE transport;

-- Table: admin
CREATE TABLE IF NOT EXISTS admin (
    a_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    psw VARCHAR(30) NOT NULL
);

INSERT INTO admin (name, psw) VALUES
('admin', 'admin');

-- Table: user_info
CREATE TABLE IF NOT EXISTS user_info (
    uid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    uname VARCHAR(30) NOT NULL,
    age VARCHAR(10) NOT NULL,
    adhar_no VARCHAR(30) NOT NULL,
    psw VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL
);

INSERT INTO user_info (name, uname, age, adhar_no, psw, email) VALUES
('Rajesh', 'rajesh', '22', '123456', 'rajesh', 'raj@gmail.com'),
('Nishant', 'nishant', '22', '12345', 'nishant', 'ni@gmail.com'),
('Rajeev Kumar', 'rajeev', '23', '1234567', 'rajeev', 'ra@gmail.com');

-- Table: bus_details
CREATE TABLE IF NOT EXISTS bus_details (
    bus_id INT AUTO_INCREMENT PRIMARY KEY,
    bname VARCHAR(30) NOT NULL,
    bno VARCHAR(20) NOT NULL,
    bfrom VARCHAR(30) NOT NULL,
    bto VARCHAR(30) NOT NULL,
    time VARCHAR(10) NOT NULL,
    type VARCHAR(10) NOT NULL,
    no_seat INT NOT NULL,
    fare INT NOT NULL
);

INSERT INTO bus_details (bname, bno, bfrom, bto, time, type, no_seat, fare) VALUES
('Toofan Express', 'mp30sc0137', 'Bhind', 'Delhi', '6pm', 'Ac', 80, 1000),
('Satabdi Express', 'MP07SE1212', 'Bhind', 'Delhi', '7pm', 'Non Ac', 80, 500),
('Janrath', 'UP16SC1212', 'Lucknow', 'Gorakhpur', '6am', 'Ac', 80, 350),
('Taj Express', 'MP30KA1213', 'Bangalore', 'Ladakh', '8am', 'Ac', 80, 5000);

-- Table: booking_det
CREATE TABLE IF NOT EXISTS booking_det (
    bus_id INT NOT NULL,
    vacant INT NOT NULL,
    jdate VARCHAR(30) NOT NULL,
    bfrom VARCHAR(30) NOT NULL,
    bto VARCHAR(30) NOT NULL
);

INSERT INTO booking_det (bus_id, vacant, jdate, bfrom, bto) VALUES
(3, 75, '2019-11-16', 'Bhind', 'Delhi'),
(2, 78, '2019-11-21', 'Bhind', 'Delhi'),
(5, 70, '2019-11-23', 'Bangalore', 'Ladakh');

-- Table: ticket
CREATE TABLE IF NOT EXISTS ticket (
    tid INT AUTO_INCREMENT PRIMARY KEY,
    bus_id INT NOT NULL,
    uid INT NOT NULL,
    seat_no VARCHAR(30) NOT NULL,
    no_seat INT NOT NULL,
    ticket_status VARCHAR(30) NOT NULL,
    jdate VARCHAR(30) NOT NULL,
    booking_date DATE NOT NULL,
    pname VARCHAR(30) NOT NULL
);

INSERT INTO ticket (bus_id, uid, seat_no, no_seat, ticket_status, jdate, booking_date, pname) VALUES
(3, 1, '1 2', 2, 'Confirm', '2019-11-16', '2019-11-17', 'Rajesh'),
(2, 1, '1 2', 2, 'Confirm', '2019-11-21', '2019-11-21', 'Rajesh'),
(5, 2, '1 2 3 4 5 6 7 8 9 10', 10, 'Confirm', '2019-11-23', '2019-11-21', 'Nishant'),
(3, 3, '3 4 5', 3, 'Confirm', '2019-11-16', '2019-11-21', 'Rajeev Kumar');

-- Stored Procedures
DELIMITER $$

CREATE PROCEDURE abcd(IN push INT)
BEGIN
    SELECT * FROM user_info;
END$$

CREATE PROCEDURE nishu(IN bus INT)
BEGIN
    SELECT * FROM bus_details;
END$$

CREATE PROCEDURE raj(IN raj INT)
BEGIN
    SELECT * FROM ticket;
END$$

DELIMITER ;

-- Done

