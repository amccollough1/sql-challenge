-- Check imported tables-
SELECT * FROM "Department_Manager";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";
SELECT * FROM "Departments";
SELECT * FROM "Department_Employee";


--1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
INNER JOIN "Salaries" s ON
e.emp_no = s.emp_no;

--2.List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees" 
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, dept.dept_name, dm.emp_no, e.last_name, e.first_name
FROM "Department_Manager"  dm
INNER JOIN "Departments"  dept ON
dept.dept_no =  dm.dept_no
INNER JOIN "Employees"  e ON
dm.emp_no = e.emp_no;

--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT  de.dept_no, de.emp_no, e.last_name, e.first_name, dept.dept_name
FROM "Department_Employee" de
INNER JOIN "Employees" e ON
de.emp_no = e.emp_no
INNER JOIN "Departments" dept ON
de.dept_no = dept.dept_no;

--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--6.List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name, dept.dept_name
FROM "Employees" e
INNER JOIN "Department_Employee" de ON
e.emp_no= de.emp_no
INNER JOIN "Departments" dept ON
dept.dept_no=de.dept_no
WHERE dept.dept_name = 'Sales';

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, dept.dept_name
FROM "Employees" e
INNER JOIN "Department_Employee" de ON
e.emp_no= de.emp_no
INNER JOIN "Departments" dept ON
dept.dept_no=de.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS "Count of Last Name"
FROM "Employees"
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;
