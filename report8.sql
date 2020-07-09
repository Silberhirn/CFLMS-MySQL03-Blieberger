select employees.emp_no, first_name, last_name, x.cnt, employees.hire_date, dept_emp.to_date, departments.dept_name, salaries.salary from employees
join dept_emp on dept_emp.emp_no=employees.emp_no
join departments on dept_emp.dept_no=departments.dept_no
join salaries on salaries.emp_no=employees.emp_no
cross join (select count(*) as cnt from employees 
	join dept_emp on dept_emp.emp_no=employees.emp_no
	join departments on dept_emp.dept_no=departments.dept_no 
    join salaries on salaries.emp_no=employees.emp_no
    where employees.hire_date<"1985-12-31" and departments.dept_no="d002" and dept_emp.to_date>"2020-07-09" and salaries.salary>"75000" and salaries.to_date>"2020-07-09") as X
where employees.hire_date<"1985-12-31" and departments.dept_no="d002" and dept_emp.to_date>"2020-07-09" and salaries.salary>"75000" and salaries.to_date>"2020-07-09"