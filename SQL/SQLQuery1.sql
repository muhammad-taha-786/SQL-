--Saylani Practice SQL 

USE Students;

CREATE TABLE student_info(
	std_id INT PRIMARY KEY IDENTITY, 
	std_name VARCHAR(50) NOT NULL,
	std_roll_num INT NOT NULL,
);

DROP TABLE student_info;

-- SQL Server FOREIGN KEY

CREATE schema procurement;

CREATE TABLE procurement.vendor_groups (
    group_id INT IDENTITY PRIMARY KEY,
    group_name VARCHAR (100) NOT NULL
);

CREATE TABLE procurement.vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
);

INSERT INTO procurement.vendor_groups(group_name)
VALUES('Third-Party Vendors'),
      ('Interco Vendors'),
      ('One-time Vendors');

SELECT * FROM procurement.vendor_groups;
SELECT group_name FROM procurement.vendor_groups;

--ON DELETE NO ACTION : 

CREATE TABLE author(
	author_id INT PRIMARY KEY IDENTITY, 
	author_name VARCHAR(50)
);

INSERT INTO author(author_name) VALUES ('taha'),('owais')
SELECT * FROM author;

CREATE TABLE books(
	book_id INT PRIMARY KEY IDENTITY, 
	book_title VARCHAR(255),
	author_id INT, 
	FOREIGN KEY (author_id) 
	REFERENCES author(author_id) ON DELETE NO ACTION 
);


CREATE TABLE student_info(
	std_id INT PRIMARY KEY IDENTITY, 
	std_name VARCHAR(50) NOT NULL,
	std_roll_num INT NOT NULL,
	std_email VARCHAR(50) UNIQUE NOT NULL,
);

INSERT INTO student_info(std_name, std_roll_num, std_email) VALUES ('Taha', 101, 'tsyed6804@gmail.com');
INSERT INTO student_info(std_name, std_roll_num, std_email) VALUES ('Owais', 102, 'tsyed6804@gmail.com');
SELECT * FROM student_info;