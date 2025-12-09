--CASES 

SELECT * FROM [sales].[orders];

SELECT DISTINCT order_status FROM [sales].[orders];

SELECT 
	CASE order_status
	WHEN 1 THEN 'PENDING'
	WHEN 2 THEN 'PRCESSING'
	WHEN 3 THEN 'REJECTED'
	WHEN 4 THEN 'COMPLETED'
	END AS modified_order
FROM [sales].[orders];


SELECT 
	CASE order_status
	WHEN 1 THEN 'PENDING'
	WHEN 2 THEN 'PRCESSING'
	WHEN 3 THEN 'REJECTED'
	WHEN 4 THEN 'COMPLETED'
	END AS modified_order,
	COUNT(*) AS or_status_count
FROM [sales].[orders]
GROUP BY 	
	CASE order_status
	WHEN 1 THEN 'PENDING'
	WHEN 2 THEN 'PRCESSING'
	WHEN 3 THEN 'REJECTED'
	WHEN 4 THEN 'COMPLETED'
	END;

SELECT * FROM [sales].[order_items];

SELECT 
	o.order_id,
	SUM(quantity * list_price) order_value,
	CASE 
		WHEN SUM(quantity * list_price) <= 500
		THEN 'Very Low'
		WHEN SUM(quantity * list_price) >500 AND
			 SUM(quantity * list_price) <= 1000
		THEN 'Low'
		WHEN SUM(quantity * list_price) >1000 AND
			SUM(quantity * list_price) <= 5000
		THEN 'Medium'
		WHEN SUM(quantity * list_price) > 5000 AND
			SUM(quantity * list_price) <= 10000
			THEN 'High'
		WHEN SUM(quantity * list_price) > 10000 
		THEN 'Very High'
		END order_priority 

	FROM sales.orders o
INNER JOIN sales.order_items i ON i.order_id = o.order_id
WHERE 
	YEAR(order_date) = 2018
GROUP BY o.order_id;

--COALESCE

SELECT COALESCE('Hi', NULL);
SELECT COALESCE(NULL, 'Hi');

SELECT first_name,
		last_name,
		COALESCE(phone, 'N/A') as phone
	FROM [sales].[customers]

--NULLIF
SELECT NULLIF(10, 20);
SELECT NULLIF('Hi', 'Hello');


--Find Duplicates From a Table in SQL Server

DROP TABLE IF EXISTS t1;
CREATE TABLE t1 (
    id INT IDENTITY(1, 1), 
    a  INT, 
    b  INT, 
    PRIMARY KEY(id)
);


INSERT INTO
    t1(a,b)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (1,2),
    (1,3),
    (2,1),
    (2,2);

SELECT * FROM t1;

SELECT 
	a,
	b, 
	COUNT(*) occurences 
	FROM t1
	GROUP BY 
	a,
	b
	HAVING 
	COUNT(*) >1;

SELECT DISTINCT id, a,b FROM t1;

SELECT 
	ROW_NUMBER() OVER(
	PARTITION BY a,b
	ORDER BY a,b
	) AS RN
FROM t1;