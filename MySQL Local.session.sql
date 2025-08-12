CREATE TABLE IF NOT EXISTS users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO users(username, email) VALUES
('Prince', 'prince@gmail.com'),
('Yudhisthir', 'yudhi@gmail.com'),
('Priyansh','priyansh@gmail.com');

SELECT * FROM users;

CREATE DATABASE temp;
use temp;