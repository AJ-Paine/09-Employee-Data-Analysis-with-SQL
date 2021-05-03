-- 1. List employee number, last name, first name, and salary for each employee
SELECT 
employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;

-- 2. List last name, first name and hire date for employees hired in 1986
SELECT  
last_name,
first_name,
hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number,
-- department name, the manager's employee number, last name, first name
SELECT
	m.dept_no,
	d.dept_name,
	m.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS m
	JOIN departments as d
	ON m.dept_no = d.dept_no
		JOIN employees AS e
		ON m.emp_no = e.emp_no

-- 4. List the department of each employee with the following information: employee number, 
-- last name, first name, and department name
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
		JOIN departments AS d
		ON de.dept_no = d.dept_no