# sql-challenge

**Background**

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

**Challenge Instructions**

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

**Data Modeling(ERD-PNG)-Data Engineering(ERD-Table Schemata)**

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.
![image](https://github.com/amccollough1/sql-challenge/assets/133404805/51383441-d0cd-4e25-958c-b458ceae6beb)

**Data Analysis :**

1.List the employee number, last name, first name, sex, and salary of each employee.

This query contains 300,024 rows of data (specified by selected columns) joined by the Employees table and Salaries table with the emp_no as the key in common.

2.List the first name, last name, and hire date for the employees who were hired in 1986.

This query contains 36,150 rows of data (specified by selected columns and conditions) from the Employees table. 

3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

This query contains 24 rows of data (specified by selected columns) joined by the Department_Manger table to the Departments table with the dept_no key as the key in common; which in turn the Departments_Manager table is joined to the Employees table with the emp_no key as the key in common. 

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

This query contains  331,603 rows of data (specified by selected columns) joined by the Department_Employee table to the Employees table with the emp_no key in common; in turn Department_Employee is joined to the Departments table with dept_no key in common.

5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

This query contains 20 rows of data (specified by selected columns) from the Employees table where the employee's first name is Hercules and the last name starts with "B".

6.List each employee in the Sales department, including their employee number, last name, and first name.

This query contains 52,245 rows of data (specified by selected columns and conditions) joined by the Employees table to the Department_Employee table with the emp_no key in common; in turn Department_Employee is joined to the Departments table with the dept_no key in common. 

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

This query contains 137,952 rows of data (specified by selected columns and conditions) joined by the Employees table to the Department_Employee table with the emp_no key in common; in turn Department_Employee is joined to the Departments table with the dept_no key in common. 

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

This query contains 1,638 rows of data (specified by selected columns).
