/*
CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL ,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);
*/
/*
DROP TABLE employees;
*/
/*
CREATE TABLE employees (
    emp_no float NOT NULL ,
	emp_title VARCHAR(30) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex CHAR,
	hire_date date NOT NULL, 
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES title_id(title_id)
);
*/

/*
DROP TABLE dept_emp;
*/

/*
CREATE TABLE dept_emp (
    emp_no float NOT NULL ,
    dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
*/

/*
DROP TABLE dept_manager ;
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL ,
    emp_no float NOT NULL ,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
*/

/*
DROP TABLE salaries ;
CREATE TABLE salaries (
    emp_no float NOT NULL ,
	salary float NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
*/

/*
CREATE TABLE title_id (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);
*/

/*
select * from employees;
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from title_id;
*/


/*
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no
*/

/*
SELECT employees.first_name, employees.last_name,  employees.hire_date
FROM employees
WHERE to_char(employees.hire_date,'yyyy') = '1986'
*/

/*
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no , employees.first_name, employees.last_name
from dept_manager, departments, employees
WHERE dept_manager.dept_no = departments.dept_no and dept_manager.emp_no = employees.emp_no
*/

/*
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments, employees, dept_emp
where dept_emp.emp_no = employees.emp_no 
and departments.dept_no = dept_emp.dept_no 
*/

/*
SELECT  employees.first_name, employees.last_name, employees.sex
from employees 
where employees.first_name = 'Hercules'
and employees.last_name LIKE 'B%'
*/

/*
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees, departments, dept_emp
where employees.emp_no = dept_emp.emp_no
and dept_emp.dept_no = departments.dept_no
and departments.dept_name = 'Sales'
*/

/*
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees, departments, dept_emp
where employees.emp_no = dept_emp.emp_no
and dept_emp.dept_no = departments.dept_no
and (departments.dept_name = 'Sales' 
or departments.dept_name = 'Development')
*/

/*
SELECT employees.last_name, COUNT(employees.last_name)
from employees
GROUP BY  employees.last_name
ORDER BY COUNT(employees.last_name) DESC ;
*/

