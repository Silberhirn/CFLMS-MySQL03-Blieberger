select employees.emp_no, first_name, last_name, x.cnt, max(salaries.salary) from employees
join salaries on employees.emp_no=salaries.emp_no
cross join(
    select count(*) as cnt from employees 
    join salaries on employees.emp_no=salaries.emp_no 
    where salaries.salary>"70000" and 		salaries.to_date>"2019-12-31") as X
where salaries.salary>"70000" and salaries.to_date>"2019-12-31"
group by employees.emp_no