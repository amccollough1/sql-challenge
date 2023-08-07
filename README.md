# sql-challenge

**Background**
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

**Data Modeling(ERD Image)- Data Schemata- Data Engineering**
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.
![image](https://github.com/amccollough1/sql-challenge/assets/133404805/51383441-d0cd-4e25-958c-b458ceae6beb)

**Data Analysis (The following is in Question followed by code format):**

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
