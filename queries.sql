---# Employee Database: A Mystery in Two Parts

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.

SELECT
first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT
dept.dept_no,
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name,
dm.dept_no,
dm.from_date,
dm.to_date
FROM employees emp, dept_manager dm, departments dept
where emp.emp_no= dm.emp_no and dept.dept_no = dm.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
dept.dept_no,
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name,
dm.dept_no,
dm.from_date,
dm.to_date
FROM employees emp, dept_manager dm, departments dept
where emp.emp_no= dm.emp_no and dept.dept_no = dm.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT
dept.dept_no,
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name,
dm.dept_no,
dm.from_date,
dm.to_date
FROM employees emp, dept_manager dm, departments dept
where emp.emp_no= dm.emp_no and dept.dept_no = dm.dept_no;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name

FROM employees emp, departments dept, dept_emp depte
where emp.emp_no= depte.emp_no and depte.dept_no = dept.dept_no;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.firs
t_name

FROM employees emp, departments dept, dept_emp depte
where emp.emp_no= depte.emp_no and depte.dept_no = dept.dept_no AND (dept.dept_name = 'Sales' OR dept.dept_name ='Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT
dept.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name

FROM employees emp, departments dept, dept_emp depte
where emp.emp_no= depte.emp_no and depte.dept_no = dept.dept_no AND (dept.dept_name = 'Sales' OR dept.dept_name ='Development');
