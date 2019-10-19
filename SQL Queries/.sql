select *
from departments;

CREATE TABLE departments(
dept_no VARCHAR(200) Primary Key Not Null,
dept_name VARCHAR (200) Not Null);

	
select *
from dept_emp;

CREATE TABLE dept_emp(
	emp_no INTEGER Not Null,
	dept_no VARCHAR(200) Not Null,
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


