CREATE DATABASE collage_analytics;

USE collage_analytics;

CREATE TABLE students_marks(
    student_id INT,
    student_name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);

INSERT INTO students_marks (student_id, student_name, department, marks)
VALUES
(101, 'Mirudhu', 'Commerce', 90),
(102, 'Manoj', 'B.A English', 97),
(103, 'Murugan', 'Computer Science', 96),
(104, 'Ashik', 'Computer Science', 98),
(105, 'Thangam', 'B.A English', 88),
(106, 'Manjusha', 'Commerce', 87),
(107, 'Madhumitha', 'Physics', 83),
(108, 'Mukunthan', 'Chemistry', 78),
(109, 'Divina Shan', 'Commerce', 92),
(110, 'Nafila', 'Economics', 95),
(111, 'Pooja', 'Chemistry', 85),
(112, 'Jai Ruba', 'Physics', 77);

SELECT * FROM students_marks;

SELECT department, COUNT(*) AS student_count,
    AVG(marks) AS average_marks FROM students_marks
GROUP BY department
ORDER BY average_marks DESC;

