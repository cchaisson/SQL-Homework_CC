SELECT employees.first_name, employees.last_name, employees.gender
FROM employees
INNER JOIN salaries
ON employees.emp_no=salaries.emp_no;

SELECT *
FROM employees
where employees.hire_date > '1986-01-01' and employees.hire_date < '1987-01-01';

SELECT  departmentmanager.dept_no,
		departments.dept_name,  
		departmentmanager.emp_no,
		employees.last_name,
		employees.first_name,
		departmentmanager.from_date,
		departmentmanager.to_date
FROM departmentmanager
INNER JOIN departments
	ON departmentmanager.dept_no = departments.dept_no
INNER JOIN employees
	ON departmentmanager.emp_no=employees.emp_no;

SELECT  departmentemployees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		departments.dept_name
FROM departmentemployees
INNER JOIN employees
	ON departmentemployees.emp_no=employees.emp_no
INNER JOIN departments
	ON departmentemployees.dept_no = departments.dept_no;
	
SELECT *
FROM employees
WHERE employees.first_name ='Hercules' and employees.last_name LIKE 'B%';

SELECT  departmentemployees.emp_no,
		employees.last_name, 
		employees.first_name, 
		departments.dept_name
FROM departmentemployees
INNER JOIN employees
	ON departmentemployees.emp_no=employees.emp_no
INNER JOIN departments
	ON departmentemployees.dept_no = departments.dept_no
WHERE departments.dept_name='Sales';

SELECT  departmentemployees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		departments.dept_name
FROM departmentemployees
INNER JOIN employees
	ON departmentemployees.emp_no=employees.emp_no
INNER JOIN departments
	ON departmentemployees.dept_no = departments.dept_no
WHERE departments.dept_name='Sales' or departments.dept_name='Development';

SELECT employees.last_name, count(employees.last_name) as name_counts
FROM employees
GROUP BY employees.last_name
ORDER BY 2 desc;