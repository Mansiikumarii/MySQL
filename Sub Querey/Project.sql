-- CREATE TABLE IF NOT EXISTS Project (
--     ID INT PRIMARY KEY,
--     empID INT NOT NULL,
--     name VARCHAR(10) NOT NULL,
--     startDate DATE NOT NULL,
--     clientID INT NOT NULL
-- );

-- INSERT INTO project
-- VALUES (1,1,'Prince','2004-08-16',3),
--          (2,2,'Anshul','2004-08-16',1),
--          (3,3,'Shrishti','2005-01-08',5),
--          (4,4,'Khushi','2004-03-17',2),
--          (5,5,'Yudhisther','2004-08-16',4);

-- CREATE TABLE IF NOT EXISTS Employee(
--     ID INT PRIMARY KEY,
--     fname VARCHAR(10) NOT NULL,
--     lname VARCHAR(10) NOT NULL,
--     Age INT NOT NULL,
--     email VARCHAR(20) NOT NULL,
--     PhoneNo VARCHAR(10) NOT Null,
--     city VARCHAR(5) NOT Null
-- );

-- ALTER TABLE employee
-- modify city VARCHAR(10);

-- SELECT * FROM Project;

-- INSERT INTO Employee

-- INSERT INTO employee
-- VALUES (1,'Anupriya','Gupta',23,'anu@gmail.com','6000038809','Assam'),
--          (2,'Kumkum','Tripathi',21,'kumkum@gmail.com','8090032004','UP'),
--          (3,'Kinjal','Mahotra',22,'kinjal@gmail.com','7597000277','UP'),
--          (4,'Archie','Daga',30,'archie@gmail.com','8000007141','Jaipur'),
--          (5,'Pratishta','Kumawat',21,'pra@gmail.com','9570000034','Jaipur');

-- CREATE TABLE IF NOT EXISTS Client(
--     ID INT PRIMARY KEY,
--     firstName VARCHAR(10) NOT NULL,
--     lastName VARCHAR(10) NOT NULL,
--     Age INT NOT NULL,
--     email VARCHAR(20) NOT NULL,
--     PhoneNo VARCHAR(10),
--     city VARCHAR(10),
--     empID INT );

-- INSERT INTO client VALUES
-- (1,'Vaagesh','Aggrawal',21,'vaagesh@gmail.com','8000617148','UP',3),
-- (2,'Papa','Jii',30,'papa@gmail.com','9950004421','Bihar',3),
-- (3,'Anupriya','Gupta',25,'anu@gmail.com','6000038809','Assam',1),
-- (4,'Saloni','Aggrawal',21,'saloni@gmail.com','8949970000','Rajasthan',5),
-- (5,'Palak','Sahu',21,'palak@gmail.com','8870000069','MP',2);

-- SELECT * FROM employee
-- WHERE Age>20;

-- SELECT * FROM employee WHERE ID in(
--     SELECT empID FROM project GROUP BY empID HAVING count(empID)
-- );

-- select details of employee having age> avg(age)
-- SELECT * FROM employee 
-- WHERE Age> (SELECT avg(age) FROM Employee);

-- from clause
-- select max age of person whose first name has a

select max(age) from(select * from employee WHERE fname like '%a') as temp;