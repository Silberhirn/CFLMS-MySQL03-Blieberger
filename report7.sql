select employees.emp_no, first_name, last_name, x.cnt, employees.hire_date, dept_emp.to_date, departments.dept_name from employees
join dept_emp on dept_emp.emp_no=employees.emp_no
join departments on dept_emp.dept_no=departments.dept_no
cross join (select count(*) as cnt from employees 
	join dept_emp on dept_emp.emp_no=employees.emp_no
	join departments on dept_emp.dept_no=departments.dept_no 
    where employees.hire_date<"1992-12-31" and departments.dept_no="d008" and dept_emp.to_date>"2020-07-09") as X
where employees.hire_date<"1992-12-31" and departments.dept_no="d008" and dept_emp.to_date>"2020-07-09"