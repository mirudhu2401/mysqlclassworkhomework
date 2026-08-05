CREATE DATABASE sales_reporting;

USE sales_reporting;

CREATE TABLE sales_data (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    product VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO sales_data
(order_id, customer_name, city, product, amount)
VALUES
(101,'Rahul','Nagpur','Laptop',52000),
(102,'Anita','Pune','Tablet',28000),
(103,'Karan','Mumbai','Mobile',19000),
(104,'Neha','Delhi','Laptop',61000),
(105,'Amit','Nagpur','Monitor',15000),
(106,'Pooja','Pune','Laptop',55000),
(107,'Ravi','Mumbai','Tablet',32000),
(108,'Sneha','Delhi','Mobile',22000),
(109,'Arjun','Nagpur','Laptop',58000),
(110,'Meena','Pune','Monitor',17000),
(111,'Sahil','Mumbai','Laptop',60000),
(112,'Divya','Delhi','Tablet',30000);

SELECT * FROM sales_data;

SELECT * FROM sales_data
WHERE amount BETWEEN 20000 AND 60000;

SELECT * FROM sales_data
WHERE city IN ('Pune','Mumbai');

SELECT * FROM sales_data
WHERE customer_name LIKE'%a%';

SELECT * FROM sales_data
WHERE amount IS NOT NULL;

SELECT * FROM sales_data
LIMIT 2,5;

