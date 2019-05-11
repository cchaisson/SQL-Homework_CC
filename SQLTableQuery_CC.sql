CREATE TABLE employees(
	emp_no int,
	birth_date date,
	first_name varchar(55),
	last_name varchar(55),
	gender varchar(55),
	hire_date date
	);

CREATE TABLE departmentmanager(
	dept_no varchar(55),
	emp_no int,
	from_date date,
	to_date date
	);
	
CREATE TABLE departmentemployees(
	emp_no int,
	dept_no varchar(55),
	from_date date,
	to_date date
	);
	
CREATE TABLE titles(
	emp_no int,
	title varchar(55),
	from_date date,
	to_date date
	);
	
CREATE TABLE salaries(
	emp_no int,
	salary int,
	from_date date,
	to_date date
	);
	
CREATE TABLE departments(
	dept_no varchar(55),
	dept_name varchar(55)
	);