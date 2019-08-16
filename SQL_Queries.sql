SELECT e.emp_no,last_name,first_name,gender,salary
FROM employees e 
JOIN salaries s
ON e.emp_no = s.emp_no;



SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date LIKE '%1986%';



SELECT
   d.dept_number, 
   d.dept_name, 
   e.emp_no, 
   e.last_name, 
   e.first_name, 
   dm.from_date, 
   dm.to_date
FROM employees e
INNER JOIN department_manager dm ON dm.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_number = dm.dept_number;



SELECT 
   e.emp_no, 
   e.first_name, 
   e.last_name,
   d.dept_name
FROM employees e
INNER JOIN department_employee de ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_number = de.dept_number;



SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';



SELECT 
   e.emp_no, 
   e.first_name, 
   e.last_name,
   d.dept_name
FROM employees e
INNER JOIN department_employee de ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_number = de.dept_number
WHERE d.dept_name = 'Sales';



SELECT 
   e.emp_no, 
   e.first_name, 
   e.last_name,
   d.dept_name
FROM employees e
INNER JOIN department_employee de ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_number = de.dept_number
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';



SELECT last_name, COUNT (last_name) AS "Count of Each Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Each Name" DESC;


