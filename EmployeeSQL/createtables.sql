---Create tables

DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title TEXT
);

DROP TABLE employees;

DROP TYPE mf;
CREATE TYPE mf AS ENUM ('M','F');

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title VARCHAR,
  birth_date DATE,
  first_name TEXT,
  last_name TEXT,
  sex mf,
  hire_date DATE,
  FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

DROP TABLE departments;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name TEXT
);

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 

DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

---CSV files to import in Desktop/Homework/sql-challenge/EmployeeSQL/Instructions/data