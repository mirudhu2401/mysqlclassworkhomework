CREATE DATABASE retail_analytics3;

USE retail_analytics3;

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    total_purchase INT,
    email VARCHAR(50)
);

INSERT INTO customers
    (customer_id, customer_name, city, total_purchase, email)
VALUES
    (101, 'Rahul', 'delhi',   62000, 'rahul@mail.com'),
    (102, 'Anita', 'Mumbai',  18000, 'anita@mail.com'),
    (103, 'Karan', 'delhi',   32000, 'karan@mail.com'),
    (104, 'Neha',  'Chennai', NULL,   'neha@mail.com'),
    (105, 'Amit',  'mumbai',  54000, 'amit@mail.com'),
    (106, 'Pooja', 'Delhi',   15000, 'pooja@mail.com');

SELECT customer_name,
CASE 
    WHEN total_purchase > 50000 THEN 'premium'
    WHEN total_purchase > 20000 THEN 'standard'
ELSE 'Basic'
END AS customer_segment
FROM customers;

SELECT customer_name
FROM customers
WHERE total_purchase IS NULL;

SELECT UPPER(TRIM(city)) AS cleaned_city
FROM customers;

SELECT DISTINCT email
FROM customers;

SELECT customer_name
FROM customers
WHERE total_purchase > 0;



