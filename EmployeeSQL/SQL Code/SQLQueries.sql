--Use employees and salaries tables, on emp_no
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no
limit 10;

--Employees table only
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
limit 10

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no 
join employees on employees.emp_no = dept_manager.emp_no
limit 10;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
limit 10;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--Employees table only
select first_name, last_name, sex from employees
where first_name = 'Hercules'
and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp 
join employees on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales'
limit 10;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--Need departments, employees, dept_emp
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp 
join employees on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
limit 15;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--Employee table only
select last_name, count(last_name) as "frequency"
from employees 
group by last_name 
order by "frequency" DESC;