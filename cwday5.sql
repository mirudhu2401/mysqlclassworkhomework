CREATE DATABASE education_analytics;

USE education_analytics;

CREATE TABLE student_enrollments_raw(
    student_id INT,
    student_name VARCHAR(50),
    student_city VARCHAR(50),
    course_id INT,
    course_name VARCHAR(50),
    instructor_names VARCHAR(50)
);
    
INSERT INTO student_enrollments_raw
(student_id,student_name, student_city, course_id, course_name, instructor_names)
VALUES
(101,'Ashik','Chennai','201','MySQL','Rasil'),
(101,'Ashik','Chennai','202','Python','Raj'),
(102,'Mirudhu','London','201','Python','Manoj'),
(103,'Murugan','America','203','Power BI','Valliyuran'),
(102,'Thangam','France','201','MySQL','Vellayuthan'),
(104,'Manjusha','Delhi','202','Power BI','Rathinaswamhy');

CREATE TABLE students(
    student_id INT PRIMARY KEY,
    student_name  VARCHAR(50),
    student_city VARCHAR(50)
);

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name  VARCHAR(50),
    instructor_name VARCHAR(50)
);

CREATE TABLE enrollments(
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

INSERT INTO students VALUES
(101,'Ashik','Chennai'),
(102,'Mirudhu','London'),
(103,'Murugan','America'),
(104,'Manjusha','Delhi');

INSERT INTO courses VALUES
(201,'MySQL','Rasil'),
(202,'Python','Manoj'),
(203,'Power BI','Valliyuran');

INSERT INTO enrollments(student_id,course_id) VALUES
(101,201),
(101,202),
(102,201),
(103,203),
(102,203),
(104,202);

SELECT * FROM students;

SELECT * FROM students
WHERE student_city='Chennai' AND
student_name='Ashik';

SELECT * FROM students
WHERE student_city='Chennai' OR student_city='London';

SELECT * FROM students
WHERE student_city IN ('Chennai','America');

SELECT * FROM students
WHERE NOT student_city='Chennai';

SELECT * FROM students
WHERE student_name LIKE 'A%';

SELECT * FROM students
LIMIT 2;




