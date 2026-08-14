CREATE DATABASE company_analytics;

USE company_analytics;

CREATE TABLE employees(
    emp_id INT,
	emp_name VARCHAR(50),
	department VARCHAR(30),
	salary INT,
	join_year  INT
);

INSERT INTO employees (emp_id, emp_name, department, salary, join_year)
VALUES
(201, 'Suresh', 'Sales', 45000, 2021),
(202, 'Neha', 'Sales', 48000, 2022),
(203, 'Aman', 'IT', 70000, 2020),
(204, 'Priti', 'Finance', 52000, 2021),
(205, 'Nikhil', 'IT', 75000, 2019);

CREATE VIEW dept_salary_summary AS
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;

CREATE VIEW recent_employees_view AS
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    join_year
FROM employees
WHERE join_year > 2020;

SELECT * FROM dept_salary_summary;

SELECT * FROM recent_employees_view;

DROP VIEW recent_employees_view;

SELECT
    department,
    total_salary
FROM dept_salary_summary
ORDER BY department;

