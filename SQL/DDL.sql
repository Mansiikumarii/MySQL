CREATE DATABASE IF NOT EXISTS org1;
USE org1;

DROP TABLE IF EXISTS account;

CREATE TABLE account (
    id INT PRIMARY KEY,
    name VARCHAR(25) UNIQUE,
    balance INT NOT NULL DEFAULT 0
);

INSERT INTO account VALUES (1, 'Kinjal', 10000);
INSERT INTO account (id, name) VALUES (2, 'Arushi');

SELECT * FROM account;

-- Add new column
ALTER TABLE account
ADD COLUMN intrest FLOAT NOT NULL DEFAULT 0;

-- verify
DESCRIBE account;
SELECT * FROM account;

-- Modify
ALTER TABLE account 
Modify intrest double not null DEFAULT 0;
DESCRIBE account;

-- change column - rename the column
ALTER TABLE account 
change column intrest saving_interest FLOAT not null DEFAULT 0;

-- drop column
ALTER TABLE account drop COLUMN saving_interest;

--Rename the table
ALTER TABLE account
rename to account_details;