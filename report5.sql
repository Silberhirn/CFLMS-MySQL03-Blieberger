select emp_no, first_name, last_name, x.cnt, hire_date 
from employees
,(select count(*) as cnt from employees 
	where hire_date>"1990-01-01" and hire_date<"1997-12-31") as X
where employees.hire_date>"1990-01-01" and employees.hire_date<"1997-12-31"