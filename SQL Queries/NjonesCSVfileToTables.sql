DROP TABLE departments;
CREATE TABLE departments(
dept_no VARCHAR(200) Primary Key UNIQUE,
dept_name VARCHAR (200) Not Null);

select *
from departments;

DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no INTEGER references employees(emp_no),
	dept_no VARCHAR(200) references departments(dept_no),
	from_date Date,
	to_date Date);
	
SELECT * 
FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR(200) Not Null,
	emp_no INTEGER Not Null,
	from_date Date,
	to_date Date);

SELECT *
FROM dept_manager

DROP TABLE employees;
CREATE TABLE employees(
emp_no INTEGER Primary Key UNIQUE,
birth_date Date Not Null,	
first_name Varchar(200) Not Null,
last_name Varchar (200) Not Null,
gender Varchar (5) Not Null, 
hire_date Date Not Null);

Select *
From employees;

CREATE TABLE salaries(
emp_no Integer ,
salary Integer Not Null,
from_date Date,	
to_date Date);

Select *
From salaries;

CREATE TABLE titles(
emp_no Integer Not Null,
title Varchar(200) Not Null,
from_date Date,	
to_date Date);

Select *
From titles;

