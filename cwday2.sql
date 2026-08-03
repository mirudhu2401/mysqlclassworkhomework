CREATE DATABASE training_analytics;

USE training_analytics;

CREATE TABLE trainees(
    trainee_id INT PRIMARY KEY,
    trainee_name VARCHAR(50),
    city VARCHAR(30),
    department VARCHAR(30),
    stipend DECIMAL(8,2),
    age INT 
);

INSERT INTO trainees
(trainee_id, trainee_name, city, department, stipend, age)
VALUES
(1, 'Tony Stark', 'Newyork', 'HR', 15000, 22),
(2, 'Steve Rogers', 'Brooklyn', 'Finance', 18000, 23),
(3, 'Natasha Romanoff', 'Petersburg', 'IT', 20000, 24),
(4, 'Bruce Banner', 'Dayton', 'Marketing', 17000, 22),
(5, 'Thor Odinson', 'Asgard', 'IT', 22000, 26),
(6, 'Clint Barton', 'USA', 'Finance', 19000, 23),
(7, 'Wanda Maximoff', 'Sokovia', 'HR', 16000, 24),
(8, 'Peter Parker', 'Queens', 'Marketing', 17500, 22), 
(9, 'Stephen Strange', 'New York', 'IT', 21000, 26),
(10, 'Carol Danvers', 'Boston', 'Finance', 18500, 23);


UPDATE trainees
SET stipend = 25000
WHERE trainee_id = 5;

UPDATE trainees
SET city = 'Bengaluru'
WHERE trainee_id = 8;

DELETE FROM trainees
WHERE trainee_id = 10;
