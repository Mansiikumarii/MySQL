USE temp;

-- Clean up old tables if they exist
DROP TABLE IF EXISTS Order_details;
DROP TABLE IF EXISTS Customer;

-- Create Customer table
CREATE TABLE Customer (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(50),
    Gender CHAR(1),
    Pincode INT,
    State VARCHAR(50)
);

-- Create Order_details table with ON DELETE SET NULL
CREATE TABLE Order_details (
    Order_id INT PRIMARY KEY,
    delivery_date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES Customer(id) ON DELETE SET NULL
);

-- Insert customers
INSERT INTO Customer
VALUES(1253,'Prince','Agra','M',282001,'UP');

INSERT INTO Customer
VALUES(210,'Amit','Delhi','M',110001,'Delhi');

-- Update a customer's address
UPDATE Customer
SET Address = 'Mumbai Central'
WHERE id = 210;

-- Delete a customer that doesn't exist (no effect, just to show it works)
DELETE FROM Customer WHERE id = 1300;

-- Insert orders (only with valid customer IDs or NULL)
INSERT INTO Order_details
VALUES(3,'2019-03-11',210);

INSERT INTO Order_details
VALUES(4,'2020-05-15',1253);

-- Example: Delete a customer and see ON DELETE SET NULL in action
DELETE FROM Customer WHERE id = 210;

-- Show final tables
SELECT * FROM Customer;
SELECT * FROM Order_details;

-- Replace
Replace INTO Customer(id, address)
VALUES(1251,'Colony');

Replace INTO customer(id, name, address)
VALUES(1300,'Mansi','Colony');
SELECT * FROM Customer;

Replace INTO Customer(id, name, address)
SELECT id, name, address
FROM customer WHERE id=500;

SELECT * FROM customer;

-- joins 
-- to apply joins there should be at least one record in both tables
-- select c.* , o.* from customer c 

-- Left Join
-- select c.*, o.* from Customer c left join
-- orders as o
-- ON c.id = o.cust_id;

-- Full Join
-- no keyword for full join in MySQL, use UNION of left and right joins
-- select * from left table as l LEFT JOIN Right table as r
-- ON l.key = r.key
-- UNION
-- select * from left join as l right join as r
-- ON l.key = r.key;

-- cross join
-- cartesian product of two tables
-- no indrustrial use, just for demonstration

-- self join
-- INNER JOIN
-- Alias 'As'
-- select c1.id, c1.name, c2.name from Customer c1
-- inner join Customer c2
-- ON c1.id = c2.id;


