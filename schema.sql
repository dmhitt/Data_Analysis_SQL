DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;


CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY,
  birth_date date NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender CHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE departments (
	dept_no	CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no	CHAR(4),
	from_date DATE  NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no	CHAR(4),
	emp_no INTEGER,
	from_date DATE  NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary Float NOT NULL,
	from_date DATE  NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	emp_no INTEGER,
	title VARCHAR(30) NOT NULL,
	from_date DATE,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);