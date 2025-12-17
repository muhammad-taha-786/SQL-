USE startersql;

SELECT * FROM user_info;

ALTER TABLE user_info ADD city VARCHAR(15);

SELECT * FROM user_info;

UPDATE user_info
SET city = CASE
    WHEN id = 2 THEN 'Karachi'
    WHEN id = 3 THEN 'Lahore'
    WHEN id = 4 THEN 'Islamabad'
    WHEN id = 5 THEN 'Multan'
    WHEN id = 6 THEN 'Peshawar'
    ELSE city
END;

UPDATE user_info 
SET city = CASE 
	WHEN id = 7 THEN 'Karachi'
	WHEN id = 8 THEN 'Karachi'
	WHEN id = 9 THEN 'Karachi'
	WHEN id = 10 THEN 'Karachi'
	WHEN id = 11 THEN 'Karachi'
END;


UPDATE user_info
SET city = CASE
    WHEN id = 12 THEN 'Karachi'
    WHEN id = 13 THEN 'Lahore'
    WHEN id = 14 THEN 'Islamabad'
    WHEN id = 15 THEN 'Multan'
    WHEN id = 16 THEN 'Peshawar'
	WHEN id = 17 THEN 'Karachi'
    WHEN id = 18 THEN 'Lahore'
    WHEN id = 19 THEN 'Islamabad'
    WHEN id = 20 THEN 'Multan'
    WHEN id = 21 THEN 'Peshawar'
    WHEN id = 22 THEN 'Karachi'
    WHEN id = 23 THEN 'Lahore'
    WHEN id = 24 THEN 'Islamabad'
    WHEN id = 25 THEN 'Multan'
    WHEN id = 26 THEN 'Peshawar'
    WHEN id = 27 THEN 'Karachi'
    WHEN id = 28 THEN 'Lahore'
    WHEN id = 29 THEN 'Islamabad'
    ELSE city
END;

SELECT DISTINCT city FROM user_info;

ALTER TABLE user_info ADD country VARCHAR(15);

SELECT * FROM user_info;

UPDATE user_info
SET country = CASE 
	WHEN id = 2 THEN 'Pakistan'
	ELSE country
END

UPDATE user_info
SET country = 'Pakistan'
WHERE country IS NULL;

SELECT * FROM user_info;

