select *
from employees;

select *
from salaries;

select *
from dept_manager;

select*
from departments;

select *
from dept_emp;

--DATA ANALYTICS
--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees 
Inner join salaries On employees.emp_no = salaries.emp_no;

--2.List employees who were hired in 1986.
Select *
From employees
where hire_date Between '1986-01-01' AND '1986-12-31';

--3.List the manager of each department with the following information: 
-----department number, department name, the manager's employee number, 
-----last name, first name, and start and end employment dates.
Select a.emp_no, a.last_name, a.first_name, b.dept_name, c.from_date, c.to_date
from employees a
Join dept_manager c ON a.emp_no = c.emp_no
Join departments b ON c.dept_no = b.dept_no;

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
Select a.emp_no, a.last_name, a.first_name, b.dept_name
from employees a
Join dept_emp c ON a.emp_no = c.emp_no
Join departments b ON c.dept_no = b.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
Select *
from employees
Where first_name = 'Hercules'
And last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
Select c.emp_no, c.last_name, c.first_name, a.dept_name
from departments a
Join dept_emp b ON a.dept_no = b.dept_no
Join employees c ON b.emp_no = c.emp_no
Where dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
Select c.emp_no, c.last_name, c.first_name, a.dept_name
from departments a
Join dept_emp b ON a.dept_no = b.dept_no
Join employees c ON b.emp_no = c.emp_no
Where dept_name in ('Sales', 'Development')
Group by c.emp_no, c.last_name, c.first_name, a.dept_name;

--8.In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
Select last_name, count(last_name)
from employees
Group by last_name
Order by count desc;

