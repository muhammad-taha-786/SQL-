CREATE DATABASE startersql;
USE startersql;

CREATE TABLE user_info(
	id INT IDENTITY PRIMARY KEY,
	name varchar(100) NOT NULL, 
	email varchar(100) UNIQUE NOT NULL, 
	gender varchar(10),
	date_of_birth DATE,
	created_at DATETIME DEFAULT GETDATE()
);

SELECT * FROM user_info;

SELECT id, email FROM user_info;


-- Rename a Table 
