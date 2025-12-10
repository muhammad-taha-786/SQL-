-- INSERTING DATA : 

USE startersql;

SELECT * FROM user_info;
-- FIRST METHOD :
INSERT INTO user_info VALUES ('Syed Taha', 'tsyed6804@gmail.com', 'MALE', '01-01-2004', '12-10-2025', '1');

-- SECOND METHOD : 
INSERT INTO user_info(name, email) VALUES ('Owais', 'owais@gmail.com');

--THIRD METHOD : 
INSERT INTO user_info (name, email, gender, date_of_birth)
VALUES
('Saim', 'saim@gmail.com', 'MALE', '2007-04-01'),
('Hassan', 'hassan@gmail.com', 'MALE', '2000-07-02'),
('Zain', 'zain@gmail.com', 'MALE', '2009-06-01'),
('Ahmed', 'ahmed@gmail.com', 'MALE', '2001-01-01'),
('Bilal', 'bilal@gmail.com', 'MALE', '2003-03-29');

SELECT * FROM user_info;


INSERT INTO user_info (name, email, gender, date_of_birth)
VALUES
('Ayan', 'ayan@gmail.com', 'MALE', '2004-05-12'),
('Hamza', 'hamza@gmail.com', 'MALE', '2002-11-21'),
('Faizan', 'faizan@gmail.com', 'MALE', '2006-09-10'),
('Saad', 'saad@gmail.com', 'MALE', '2005-03-18'),
('Shahzaib', 'shahzaib@gmail.com', 'MALE', '2001-08-25'),
('Taha', 'taha@gmail.com', 'MALE', '2003-12-04'),
('Farhan', 'farhan@gmail.com', 'MALE', '2000-06-16'),
('Rayan', 'rayan@gmail.com', 'MALE', '2007-02-27'),
('Ibrahim', 'ibrahim@gmail.com', 'MALE', '2008-07-14'),
('Huzaifa', 'huzaifa@gmail.com', 'MALE', '2009-10-05'),
('Junaid', 'junaid@gmail.com', 'MALE', '2002-04-22'),
('Talha', 'talha@gmail.com', 'MALE', '2006-12-30'),
('Rehan', 'rehan@gmail.com', 'MALE', '2001-03-08'),
('Kashif', 'kashif@gmail.com', 'MALE', '2003-09-19'),
('Noman', 'noman@gmail.com', 'MALE', '2005-07-03'),
('Hassan Raza', 'hassanraza@gmail.com', 'MALE', '2004-11-12'),
('Adeel', 'adeel@gmail.com', 'MALE', '2001-05-28'),
('Sufyan', 'sufyan@gmail.com', 'MALE', '2007-01-17'),
('Mubashir', 'mubashir@gmail.com', 'MALE', '2008-03-11'),
('Shehroz', 'shehroz@gmail.com', 'MALE', '2005-10-29');


SELECT * FROM user_info;