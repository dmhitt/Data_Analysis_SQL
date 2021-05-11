select * from departments;
select * from employees;
select count(*) from dept_emp;
select * from dept_manager;
select count(*) from salaries;
select * from titles;


--Data Analysis
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp_no, last_name, first_name, gender as "sex", salary
from employees
inner join salaries
using(emp_no)
order by emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where TO_CHAR(hire_date :: DATE, 'yyyy,mm,dd') like '1986%';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_no, dept_name, emp_no, last_name, first_name
from dept_manager
inner join departments
using (dept_no)
inner join employees
using(emp_no);

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select  emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
using (emp_no)
inner join departments
using(dept_no)
order by emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and 
--last names begin with "B."


select first_name, last_name, gender
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, 
--and department name.
select emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
using (emp_no)
inner join departments
using (dept_no)
where dept_no = 'd007';

--7. List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.

select emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
using (emp_no)
inner join departments
using (dept_no)
where dept_no = 'd007'
or dept_no = 'd005';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees 
--share each last name.

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;

------BONUS

select * from employees
inner join dept_emp
using(emp_no)
inner join salaries
using(emp_no)
where emp_no = 499942

select * from titles
where emp_no = 499942




