CREATE DATABASE employee_directory;

USE employee_directory;

CREATE TABLE staff(
    staff_id INT,
    staff_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    location VARCHAR(30)
);

INSERT INTO staff(staff_id,staff_name,department,salary,location)
VALUES
(1,'Arjun','IT',62000,'Pune'),
(2,'Meera','HR',42000,'Mumbai'),
(3,'Rohan','IT',68000,'pune'),
(4,'Kavya','Finance',50000,'delhi');

CREATE VIEW staff_public_view AS
SELECT staff_name, department,location
FROM staff;

SELECT * FROM staff_public_view;

CREATE VIEW pune_staff_view AS
SELECT staff_name, department, location
FROM staff
WHERE location = 'Pune';

SELECT * FROM pune_staff_view;

SELECT * FROM staff_public_view;
SELECT * FROM pune_staff_view;

DROP VIEW pune_staff_view;

