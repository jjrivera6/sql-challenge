CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR);
	
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT);
	
CREATE TABLE employees (
	emp_no INT Primary Key,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE);
	
CREATE TABLE salaries (
	emp_no INT,
	salary INT);
	
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR);
	
SELECT * FROM departments

SELECT * FROM dept_emp

SELECT * FROM dept_manager

SELECT * FROM employees 

SELECT * FROM salaries

SELECT * FROM titles