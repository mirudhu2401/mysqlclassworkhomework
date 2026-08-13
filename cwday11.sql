CREATE DATABASE training_analytics2;

USE training_analytics;

CREATE TABLE students(
    student_id INT,
    student_name VARCHAR(50),
    score INT,
    stipend INT
);

INSERT INTO students(student_id,student_name,score,stipend)
VALUES
(1, 'rahul',82,3500),
(2, 'anita',68,3000),
(3, 'karan',45,NULL),
(4, 'Neha',91,4000),
(5, 'Amit',55,2800),
(6, 'Pooja',77,NULL);

SELECT student_name,score,
CASE
WHEN score >= 80 THEN 'High'
WHEN score >= 50 THEN 'Medium'
ELSE 'Low'
END AS performance_level
FROM students;

SELECT student_name,
IF(stipend >= 3000,'Eligible','Not Eligible')AS stipend_status
FROM students;

SELECT student_name,IFNULL(stipend,0) AS  stipend_cleaned
FROM students;


