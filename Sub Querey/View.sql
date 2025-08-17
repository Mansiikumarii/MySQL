SELECT * FROM employee ;

-- CREATE VIEW Custom_view as 
-- SELECT fname, age
-- FROM employee;

SELECT * FROM custom_view;

SHOW FULL TABLES WHERE Table_type = 'VIEW';
SHOW FULL TABLES WHERE Table_type = 'BASE TABLE';

ALTER VIEW Custom_view AS
SELECT fname, lname, age FROM employee;

-- drop view
DROP VIEW if EXISTS custom_view;

-- altering the view
-- ALTER VIEW custom_view AS SELECT fname, lname, age FROM employee;