create database retail_analytics;

create table customers
(
    id int primary key,
    full_name varchar(50),
    gender ENUM('M','F'),
    city varchar(30),
    is_active boolean );