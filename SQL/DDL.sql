CREATE TABLE account(
    id INT PRIMARY KEY,
    name VARCHAR(25) unique,
    balance INT,
    constraint chk_balance CHECK (balance >= 1000)
)

INSERT INTO account VALUES(1,'Kinjal',10000);

SELECT * from account;