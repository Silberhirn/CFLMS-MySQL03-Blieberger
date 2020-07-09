select employees.first_name, employees.last_name, employees.birth_date, employees.gender, employees.hire_date, titles.title, departments.dept_name, salaries.salary
from employees
left join titles on titles.emp_no=employees.emp_no
join salaries on salaries.emp_no=employees.emp_no
right join dept_manager on dept_manager.emp_no=employees.emp_no
join departments on departments.dept_no=dept_manager.dept_no
where salaries.to_date>"2020-07-09" and titles.to_date>"2020-07-09" and dept_manager.to_date>"2020-07-09"