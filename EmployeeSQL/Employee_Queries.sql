--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
	join salaries as s
	on (e.emp_no = s.emp_no)
;

--select first, last name and hire date for employees hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select e.last_name, e.first_name, e.emp_no, d.dept_name, dm.dept_no
from employees as e
	join dept_manager as dm
	on (e.emp_no = dm.emp_no)
		join departments as d
		on (d.dept_no = dm.dept_no)
;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no)
;
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees 
where first_name = 'Hercules' AND last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no)
		where dept_name = 'Sales'
;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no)
		where dept_name = 'Sales' or dept_name = 'Development'
;

