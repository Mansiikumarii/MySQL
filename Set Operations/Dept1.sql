USE mansidb; -- or org1, whichever database you want

-- Drop just in case an old version exists
DROP TABLE IF EXISTS dept1;

-- Recreate the table
CREATE TABLE dept1 (
    empid INT PRIMARY KEY,
    name CHAR(1),
    role VARCHAR(10)
);

-- Insert sample data
INSERT INTO dept1 
VALUES 
(1,'A', 'engineer'),
(2,'B','salesman'),
(3,'C','manager'),
(4,'D','salesman'),
(5,'E','engineer');

-- Now check data
SELECT * FROM dept1;

-- CREATE TABLE dept2 (
--     empid INT PRIMARY KEY,
--     name CHAR(1),
--     role VARCHAR(10)
-- );

-- INSERT INTO dept2
-- VALUES 
-- (3,'C', 'manager'),
-- (4,'F','marketing'),
-- (7,'G','salesman');

-- Finally run union query
SELECT * FROM dept1 WHERE role = 'salesman'
UNION
SELECT * FROM dept2 WHERE role = 'salesman';

SELECT dept1.* FROM dept1 INNER JOIN dept2 using(empid);

-- list all employees in dept1 who are not in dept2
-- Minus operation
SELECT dept1.* from dept1 LEFT JOIN dept2 using(empid)
WHERE dept2.empid IS NULL;