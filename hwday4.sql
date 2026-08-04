CREATE DATABASE sales_analytics;

USE sales_analytics;

CREATE TABLE salespersons (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_name VARCHAR(50) NOT NULL,
    region VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    joining_date DATE,
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE sales_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_id INT,
    order_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (sales_id) REFERENCES salespersons(sales_id)
);

INSERT INTO salespersons (sales_name, region, email, joining_date, status)
VALUES
('Ashik','South','ashik@gmail.com','2024-01-10','active'),
('Mirudhu','North','mirudhu@gmail.com','2023-12-15','active'),
('Manoj','East','manoj@gmail.com','2024-02-05','inactive'),
('Thangam','West','thangam@gmail.com','2023-11-20','active'),
('Murugan','South','murugan@gmail.com','2024-03-01','active'),
('Mariyam','North','mariyam@gmail.com','2024-01-25','inactive'),
('Zoya','East','zoya@gmail.com','2023-10-18','active'),
('Ravi','West','ravi@gmail.com','2024-04-12','active');

INSERT INTO sales_orders (sales_id, order_amount, order_date)
VALUES
(1,15000,'2024-05-01'),
(2,22000,'2024-05-02'),
(3,18000,'2024-05-03'),
(4,25000,'2024-05-04'),
(5,30000,'2024-05-05'),
(6,27000,'2024-05-06'),
(7,12000,'2024-05-07'),
(8,35000,'2024-05-08'),
(1,16000,'2024-05-09'),
(2,24000,'2024-05-10'),
(3,19000,'2024-05-11'),
(4,26000,'2024-05-12'),
(5,31000,'2024-05-13'),
(6,28000,'2024-05-14'),
(7,13000,'2024-05-15');

SELECT * FROM salespersons;

SELECT sales_name,region
FROM salespersons;

SELECT DISTINCT region
FROM salespersons;

SELECT sales_name AS executive_name
FROM salespersons;

SELECT order_amount AS total_value
FROM sales_orders;

CREATE INDEX idx_region
ON salespersons(region);

SELECT * FROM salespersons;

SELECT sales_name,region
FROM salespersons;
