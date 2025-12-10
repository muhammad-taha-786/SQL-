USE startersql;

SELECT * FROM user_info;

--ADD COLUMN :
ALTER TABLE user_info ADD is_active BIT NOT NULL DEFAULT 1;
SELECT * FROM user_info;
ALTER TABLE user_info ADD age INT NOT NULL;

-- DROP COLUMN :

ALTER TABLE user_info
DROP COLUMN is_active;

ALTER TABLE user_info DROP COLUMN age;
SELECT * FROM user_info;

-- MODIFY COLUMN : 

ALTER TABLE user_info ALTER COLUMN name VARCHAR(150);
SELECT * FROM user_info;

ALTER TABLE user_info ALTER COLUMN name VARCHAR(150) FIRST;
