select employees.first_name, employees.last_name, employees.birth_date, employees.gender, employees.hire_date, titles.title, salaries.salary
from employees
left join titles on titles.emp_no=employees.emp_no
join salaries on salaries.emp_no=employees.emp_no
where salaries.to_date>"2020-07-09" and titles.to_date>"2020-07-09"