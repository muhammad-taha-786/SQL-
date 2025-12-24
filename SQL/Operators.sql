use startersql;

SELECT * FROM user_info;

ALTER TABLE user_info ADD salary INT NOT NULL DEFAULT 0;

UPDATE user_info
SET salary = CASE
	WHEN id = 2 THEN 100000
	WHEN id = 3 THEN 150000
	WHEN id = 4 THEN 200000
	WHEN id = 5 THEN 80000
	WHEN id = 6 THEN 110000
	WHEN id = 7 THEN 100000
	WHEN id = 8 THEN 140000
	WHEN id = 9 THEN 150000
	WHEN id = 10 THEN 125000
	WHEN id = 11 THEN 70000
	WHEN id = 12 THEN 250000
	WHEN id = 13 THEN 100000
	WHEN id = 14 THEN 180000
	WHEN id = 15 THEN 40000
	WHEN id = 16 THEN 50000
	WHEN id = 17 THEN 70000
	WHEN id = 18 THEN 80000
	WHEN id = 19 THEN 90000
	WHEN id = 20 THEN 35000
	WHEN id = 21 THEN 100000
	WHEN id = 22 THEN 20000
	WHEN id = 23 THEN 150000
	WHEN id = 24 THEN 80000
	WHEN id = 25 THEN 90000
	WHEN id = 26 THEN 100000
	WHEN id = 27 THEN 200000
	WHEN id = 28 THEN 250000
	WHEN id = 29 THEN 10000
	WHEN id = 2 THEN 25000
	ELSE salary 
END

SELECT * FROM user_info;
--ascending order
SELECT * FROM user_info
ORDER BY salary;

--descending order
SELECT * FROM user_info
ORDER BY salary DESC;

SELECT * FROM user_info
ORDER BY city,salary DESC;



-- AND OPERATORS : 
SELECT * FROM user_info;

SELECT * FROM user_info
WHERE city='Karachi' AND salary='250000';

SELECT * FROM user_info
WHERE gender='Male' AND salary='250000';

SELECT * FROM user_info
WHERE city='Karachi' AND salary <'250000';


-- OR OPERATOR : 
SELECT * FROM user_info;

SELECT * FROM user_info
WHERE name='Syed Taha' OR name='Owais';

--NOT OPERATORS : 

SELECT * FROM user_info;

SELECT * FROM user_info
WHERE NOT salary = '125000';


--IN OPERATORS : 

SELECT * FROM user_info;

SELECT * FROM user_info
WHERE city IN('Karachi', 'Lahore');

SELECT * FROM user_info
WHERE name IN('taha', 'faizan', 'saad');

SELECT * FROM user_info
WHERE city NOT IN('Karachi', 'Lahore');


--BETWEEN OPERATORS : 

SELECT * FROM user_info;

SELECT * FROM user_info
WHERE salary BETWEEN 10000 AND 125000;

SELECT * FROM user_info
WHERE salary NOT BETWEEN 10000 AND 125000;

--LIKE OPERATORS : 
SELECT * FROM user_info;

SELECT * FROM user_info
WHERE city LIKE 'I%';

SELECT * FROM user_info
WHERE name LIKE 'S%';

SELECT * FROM user_info
WHERE name LIKE '%S';

--MAX 
SELECT * FROM user_info;
SELECT MAX(salary) FROM user_info;
SELECT MAX(salary) AS Result from user_info;

--MIN 
SELECT MIN(salary)
FROM user_info;

SELECT MIN(salary) AS RESULT
FROM user_info;

--SUM 
SELECT SUM(salary)
FROM user_info;

SELECT SUM(salary)
FROM user_info
WHERE salary >= 10000;


SELECT SUM(salary) AS RESULT
FROM user_info;


--AVERAGE FUNCITON:
SELECT AVG(salary) AS RESULT
FROM user_info;

-- COUNT FUNCTION: 
SELECT * FROM user_info;

SELECT COUNT(name)
FROM user_info;

SELECT COUNT(name)
FROM user_info
WHERE salary > 100000;

SELECT COUNT(*) FROM user_info;

