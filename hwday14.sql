CREATE DATABASE sales_optimization;

USE sales_optimization;

CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    order_date DATE,
    region VARCHAR(50),
    sales_amount DECIMAL(10,2)
);

INSERT INTO sales_data(order_id, order_date, region, sales_amount)
VALUES
(401, '2024-02-01', 'North', 12000),
(402, '2024-02-03', 'South', 8000),
(403, '2024-02-05', 'North', 15000),
(404, '2024-02-08', 'East', 6000),
(405, '2024-02-10', 'South', 9000);

SELECT region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region;

sELECT *
FROM sales_data
WHERE order_date >= '2024-01-01'
AND order_date < '2025-01-01';



