CREATE DATABASE management_dashboard;

USE management_dashboard;

CREATE TABLE management_dashboard(
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(30),
    product_name VARCHAR(50),
    sales_amount DECIMAL(10,2)
);

INSERT INTO management_dashboard (order_id, order_date, customer_id, product_name, sales_amount)
VALUES
(501, '2024-01-05', 'C01', 'Laptop', 60000),
(502, '2024-01-06', 'C02', 'Mobile', 28000),
(503, '2024-01-06', 'C01', 'Laptop', 55000),
(504, '2024-01-10', 'C03', 'Headphones', 4000),
(505, '2024-01-12', 'C04', 'Mobile', 30000),
(506, '2024-01-15', 'C02', 'Laptop', 62000),
(507, '2024-01-18', 'C05', 'Tablet', 22000),
(508, '2024-01-20', 'C03', 'Mobile', 29000),
(509, '2024-01-22', 'C01', 'Tablet', 21000),
(510, '2024-01-25', 'C04', 'Laptop', 58000);

SELECT AVG(sales_amount) AS average_order_value
FROM management_dashboard;

SELECT YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales_amount) AS monthly_total_sales
FROM management_dashboard
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT customer_id,
    COUNT(order_id) AS total_orders
FROM management_dashboard
GROUP BY customer_id
HAVING COUNT(order_id) > 2;

SELECT product_name,
    SUM(sales_amount) AS total_revenue
FROM management_dashboard
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 3;