USE startersql;

CREATE TABLE student(
	id INT NOT NULL,
	std_name VARCHAR(255) NOT NULL,
	std_section VARCHAR(255),
	std_roll_no INT,
	std_marks INT NOT NULL
);

INSERT INTO student (id, std_name, std_section, std_roll_no, std_marks) VALUES
(1,'Ali Khan','A',101,78),
(2,'Ahmed Raza','B',102,85),
(3,'Sara Ahmed','C',103,92),
(4,'Usman Ali','A',104,66),
(5,'Ayesha Noor','B',105,88),
(6,'Hassan Tariq','C',106,74),
(7,'Zain Malik','A',107,59),
(8,'Fatima Zahra','B',108,91),
(9,'Bilal Hussain','C',109,80),
(10,'Maham Sheikh','A',110,69),

(11,'Hamza Iqbal','B',111,77),
(12,'Noor Fatima','C',112,95),
(13,'Saad Ahmed','A',113,64),
(14,'Laiba Khan','B',114,89),
(15,'Umer Farooq','C',115,71),
(16,'Hira Shah','A',116,84),
(17,'Danish Ali','B',117,76),
(18,'Iqra Hassan','C',118,90),
(19,'Shahzaib Raza','A',119,58),
(20,'Anum Siddiqui','B',120,87),

(21,'Kashif Mehmood','C',121,73),
(22,'Sana Tariq','A',122,82),
(23,'Asad Ali','B',123,68),
(24,'Maryam Khan','C',124,91),
(25,'Fahad Raza','A',125,79),
(26,'Areeba Noor','B',126,86),
(27,'Noman Malik','C',127,65),
(28,'Sidra Iqbal','A',128,93),
(29,'Imran Ahmed','B',129,70),
(30,'Bushra Shaikh','C',130,88),

(31,'Talha Anwar','A',131,75),
(32,'Zoya Fatima','B',132,90),
(33,'Waqas Ali','C',133,62),
(34,'Komal Riaz','A',134,85),
(35,'Adnan Khan','B',135,77),
(36,'Rabia Noor','C',136,94),
(37,'Salman Tariq','A',137,69),
(38,'Hafsa Ahmed','B',138,88),
(39,'Mubashir Ali','C',139,72),
(40,'Eman Zahid','A',140,91),

(41,'Furqan Haider','B',141,67),
(42,'Hina Raza','C',142,86),
(43,'Shahid Khan','A',143,74),
(44,'Amna Yousuf','B',144,89),
(45,'Kamran Ali','C',145,63),
(46,'Sadia Iqbal','A',146,92),
(47,'Tariq Mehmood','B',147,71),
(48,'Minal Khan','C',148,95),
(49,'Rizwan Ahmed','A',149,78),
(50,'Nida Fatima','B',150,84),

(51,'Adeel Raza','C',151,66),
(52,'Mahnoor Ali','A',152,90),
(53,'Zeeshan Khan','B',153,73),
(54,'Aiman Tariq','C',154,88),
(55,'Sohail Ahmed','A',155,69),
(56,'Anaya Noor','B',156,91),
(57,'Junaid Ali','C',157,64),
(58,'Hoorain Shah','A',158,95),
(59,'Faizan Raza','B',159,77),
(60,'Sumbul Khan','C',160,82),

(61,'Arslan Malik','A',161,74),
(62,'Mehak Iqbal','B',162,89),
(63,'Yasir Ahmed','C',163,61),
(64,'Alishba Khan','A',164,93),
(65,'Naveed Ali','B',165,70),
(66,'Esha Noor','C',166,88),
(67,'Rehan Tariq','A',167,76),
(68,'Maha Raza','B',168,90),
(69,'Shuja Ahmed','C',169,65),
(70,'Sania Khan','A',170,84),

(71,'Owais Malik','B',171,72),
(72,'Iqbal Hussain','C',172,67),
(73,'Huma Zahid','A',173,91),
(74,'Farhan Ali','B',174,75),
(75,'Kiran Noor','C',175,89),
(76,'Shabbir Khan','A',176,63),
(77,'Arooj Fatima','B',177,94),
(78,'Naeem Raza','C',178,71),
(79,'Rida Khan','A',179,88),
(80,'Jibran Ahmed','B',180,79),

(81,'Waleed Ali','C',181,66),
(82,'Aqsa Noor','A',182,92),
(83,'Nisar Khan','B',183,74),
(84,'Hifza Raza','C',184,90),
(85,'Zubair Ahmed','A',185,68),
(86,'Sehrish Khan','B',186,87),
(87,'Jameel Ali','C',187,62),
(88,'Mishal Noor','A',188,95),
(89,'Irfan Raza','B',189,77),
(90,'Laiba Fatima','C',190,84),

(91,'Azhar Khan','A',191,71),
(92,'Sana Malik','B',192,89),
(93,'Noman Raza','C',193,64),
(94,'Tuba Ahmed','A',194,92),
(95,'Arif Ali','B',195,73),
(96,'Haniya Noor','C',196,90),
(97,'Imad Khan','A',197,76),
(98,'Sumaira Raza','B',198,88),
(99,'Nasir Ahmed','C',199,69),
(100,'Adeel Fatima','A',200,85);

SELECT * FROM student;

SELECT std_name
FROM student
WHERE std_name = 'Ali Khan';


--Foreign Key:

CREATE TABLE emp(
	emp_id INT NOT NULL PRIMARY KEY,
	emp_name VARCHAR(255) NOT NULL,
	emp_salary INT NOT NULL
);

INSERT INTO emp (emp_id, emp_name, emp_salary) VALUES
(1, 'Ali Khan', 50000),
(2, 'Ahmed Raza', 60000),
(3, 'Sara Ahmed', 55000),
(4, 'Usman Ali', 45000),
(5, 'Ayesha Noor', 65000),
(6, 'Hassan Tariq', 70000),
(7, 'Zain Malik', 48000),
(8, 'Fatima Zahra', 62000),
(9, 'Bilal Hussain', 53000),
(10, 'Maham Sheikh', 58000);

SELECT * FROM emp;

CREATE TABLE department(
	id INT NOT NULL PRIMARY KEY,
	dep_name VARCHAR(255),
	emp_id INT FOREIGN KEY REFERENCES emp(emp_id)
);


INSERT INTO department (id, dep_name, emp_id) VALUES
(1, 'HR', 1),
(2, 'IT', 2),
(3, 'Finance', 3),
(4, 'Admin', 4),
(5, 'HR', 5),
(6, 'IT', 6),
(7, 'Sales', 7),
(8, 'Finance', 8),
(9, 'Admin', 9),
(10, 'Sales', 10);

SELECT * FROM department;

--Check Constraints 

CREATE TABLE employee(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL, 
	salary INT CHECK(salary < 25000)
);


INSERT INTO employee (id, name, salary) VALUES
(1, 'Ali Khan', 18000),
(2, 'Ahmed Raza', 22000),
(3, 'Sara Ahmed', 20000),
(4, 'Usman Ali', 15000),
(5, 'Ayesha Noor', 24000),
(6, 'Hassan Tariq', 23000),
(7, 'Zain Malik', 17000),
(8, 'Fatima Zahra', 21000),
(9, 'Bilal Hussain', 19500),
(10, 'Maham Sheikh', 16000);


SELECT * FROM employee;