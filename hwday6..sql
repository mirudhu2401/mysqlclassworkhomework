CREATE DATABASE retail_analytics2;

USE retail_analytics2;

CREATE TABLE sales_data (
    order_id INT,
    city VARCHAR(30),
    product VARCHAR(50),
    sales_amount DECIMAL(10,2)
);
INSERT INTO sales_data (order_id, city, product, sales_amount)
VALUES
(101, 'London', 'Samsung', 180000),
(102, 'America', 'Laptop', 45000),
(103, 'France', 'Headphone', 20000),
(104, 'Philippines', 'iPad', 50000),
(105, 'Russia', 'Bluetooth', 80000),
(106, 'London', 'Samsung', 25000),
(107, 'America', 'Laptop', 40000),
(108, 'France', 'Headphone', 70000),
(109, 'Philippines', 'iPad', 23000),
(110, 'Russia', 'Bluetooth', 54000),
(111, 'London', 'Samsung', 90000),
(112, 'America', 'Laptop', 56000),
(113, 'France', 'Headphone', 80000),
(114, 'Melbourne', 'Bluetooth', 90000),
(115, 'Melbourne', 'iPad', 45000);

SELECT city, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city;

SELECT city, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city;

SELECT city, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city
HAVING SUM(sales_amount) > 50000;

SELECT product, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 3;



