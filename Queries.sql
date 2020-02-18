/*1.List the following details of each employee: 
employee number, last name, first name, gender, and salary*/

SELECT e.emp_no, e.last_name, e.first_name,
e.gender, s.salary
FROM employees e ,salaries s
WHERE  e.emp_no = s.emp_no;

/*2.List employees who were hired in 1986.*/

SELECT e.emp_no, e.last_name, e.first_name,
e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986;

/*3.List the manager of each department with the following information:
department number, department name, the manager's employee number,
last name, first name, and start and end employment dates*/

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM departments d, employees e, dept_manager dm
WHERE e.emp_no = dm.emp_no AND d.dept_no = dm.dept_no;

/*4.List the department of each employee with the following information:
employee number, last name, first name, and department name.*/

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_emp de
WHERE e.emp_no = de.emp_no

/*5.List all employees whose first name is "Hercules" and last names begin with "B."*/

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
WHERE e.first_name ='Hercules' AND e.last_name like 'B%'

/*6.List all employees in the Sales department, 
including their employee number, last name, first name, and department name.*/

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_emp de
WHERE (e.emp_no = de.emp_no AND d.dept_no = de.dept_no AND dept_name = 'Sales');

/*7.List all employees in the Sales and Development departments,
including their employee number, last name, first name, and department name.*/

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_emp de
WHERE (e.emp_no = de.emp_no AND d.dept_no = de.dept_no AND dept_name = 'Sales') 
	   OR (e.emp_no = de.emp_no AND d.dept_no = de.dept_no AND dept_name = 'Development');

/*8.In descending order, list the frequency count of employee last names,
i.e., how many employees share each last name.*/

SELECT e.last_name , COUNT(e.last_name)
FROM employees e
Group by e.last_name
Order by count DESC


