
-- List employee number, last name, first name, and salary for each employee
SELECT 
employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no; 