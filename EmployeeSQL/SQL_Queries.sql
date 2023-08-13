--Test query
select * from employees
LIMIT 5
;

--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on (e.emp_no = s.emp_no)
LIMIT 5
;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like '%1986%'
LIMIT 5
;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
from dept_managers dm
join departments d on (dm.dept_no = d.dept_no)
join employees e on (dm.emp_no = e.emp_no)
LIMIT 5
;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join departments d on (de.dept_no = d.dept_no)
join employees e on (de.emp_no = e.emp_no)
LIMIT 5
;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name, e.last_name, e.sex
from employees e
where e.first_name = 'Hercules' and last_name like 'B%'
LIMIT 5
;

--List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de on (de.emp_no = e.emp_no)
join departments d on (d.dept_no = de.dept_no)
where d.dept_name = 'Sales'
LIMIT 5
;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on (de.emp_no = e.emp_no)
join departments d on (d.dept_no = de.dept_no)
where d.dept_name = 'Sales' or d.dept_name = 'Development'
LIMIT 5
; 

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name,
       COUNT(*) AS "Frequency Counts"
FROM employees e
GROUP BY e.last_name
ORDER BY "Frequency Counts" DESC
LIMIT 5;






