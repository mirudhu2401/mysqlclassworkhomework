CREATE DATABASE internship_analytics;

USE internship_analytics;

CREATE TABLE interns(
    intern_id INT PRIMARY KEY,
    intern_name VARCHAR(50),
    college VARCHAR(50),
    city VARCHAR(30),
    stipend DECIMAL(8,2),
    duration_months INT
    );

INSERT INTO interns
(intern_id, intern_name, college, city, stipend, duration_months)
VALUES
(1, 'Ashik', 'Anna University','Chennai',2500,3),
(2, 'Manoj', 'PSG College','Coimbatore',3500,8),
(3, 'Murugan', 'MIT','Chennai',4000,12),
(4, 'thangam', 'SRM University','Chennai',2800,4),
(5, 'Raj','VIT','Vellore',5000,9),
(6, 'Mirudhula', 'Bharathiar University','Coimbatore',3200,7),
(7, 'Vijay', 'Loyola College','Chennai',2700,5),
(8, 'Manjusha', 'Madras University','Chennai',4500,10),
(9, 'Madhumitha', 'SASTRA University','Thanjavur',3800,6),
(10, 'Mukunthan', 'Stella Maris College','Chennai',2900,4),
(11, 'Ganesh', 'Thiagarajar College','Madurai',4200,8),
(12, 'Shiva', 'Kongu Engineering College','Erode',2600,3),
(13, 'Ayappan', 'Amrita University','Coimbatore',3600,7),
(14, 'Saraswathy', 'Saveetha University','Chennai',4100,12),
(15, 'Parvathy', 'Hindustan University','Chennai',3400,6);

UPDATE interns
SET stipend = stipend = 1000
WHERE duration_months >6;

UPDATE interns
SET college = 'Anna university'
WHERE intern_id = 5;

DELETE FROM interns
WHERE stipend < 3000;