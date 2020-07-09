select 'departments' tablename, count(*) 'rows' from departments 
union select 'dept_emp' tablename, count(*) 'rows' from dept_emp 
union select 'dept_manager' tablename, count(*) 'rows' from dept_manager 
union select 'employees' tablename, count(*) 'rows' from employees 
union select 'salaries' tablename, count(*) 'rows' from salaries 
union select 'titles' tablename, count(*) 'rows' from titles