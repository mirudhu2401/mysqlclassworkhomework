CREATE DATABASE company_analytics;

USE company_analytics;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(30),
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) DEFAULT 25000,
    age INT
);

INSERT INTO employees(emp_name, department, city, email, salary, age)
VALUES
('Ashik','HR','Chennai','ashik@gmail.com',35000,28),
('Mirudhu','Finance','London','mirudhu@gmail.com',38000,26),
('Manoj','Marketing','America','mano@gmail.com',40000,30),
('Thangam','Logistics','Japan','thangam@gmail.com',22000,32),
('Murugan','Finance','New York','murugaa@gmail.com',38000,34),
('Mariyam','HR','Germany','mariyamm@gmail.com',23000,23),
('Zoya','Marketing','New Zealand','zoyaa@gmail.com',21000,21),
('Mirshik Raj','Finance','Switzerland','mirshikaraj@gmail.com',28000,27),
('Ravi','IT','Bangalore','ravi@gmail.com',45000,29),
('Anitha','Sales','Hyderabad','anitha@gmail.com',30000,25);

SELECT * FROM employees;

SELECT emp_name,department,salary FROM employees;

SELECT DISTINCT department
FROM employees;


SELECT emp_name AS employee_name
FROM employees;

SELECT emp_name,city
FROM employees AS employees;

SELECT * FROM employees;

