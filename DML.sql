USE temp;

-- INSERT INTO customer
-- VALUES(1253,'Prince','Agra','M',282001,'UP');

SELECT * FROM Customer;

-- update
UPDATE Customer
SET Address = 'Mumbai Central'
WHERE id = 210;



-- delete
DELETE FROM Customer WHERE id = 1300;

SELECT * FROM Customer;  

-- INSERT INTO customer
-- VALUES(1,'Ujjwal','Arrah','M',802301,'Bihar');

DROP TABLE IF EXISTS Order_details;
CREATE TABLE Order_details(
    Order_id INT PRIMARY key,
    delivery_date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES Customer(id)
);

INSERT INTO Order_details
VALUES(3,'2019-03-11',1);

SELECT * FROM Order_details;

delete FROM Order_details 
WHERE cust_id = 1;

DELETE FROM customer
WHERE id = 1;

