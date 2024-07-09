use dummydb;

-- JOIN AND INNER JOIN BOTH ARE SAME THIS CONTAIN ARE COMMON AVLUE
select employees.first_name,departments.department_name
from employees
	join departments on employees.department_id=departments.department_id;
    
select employees.first_name,departments.department_name
from employees
	inner join departments on employees.department_id=departments.department_id;
    
-- RIGHT JOIN IS CONTAIN COMMON AND RIGHT TABLE UNCOMMON VALUE
select employees.first_name,departments.department_name
from employees
	RIGHT join departments on employees.department_id=departments.department_id;
    
-- LEFT JOIN IS CONTAIN COMMON AND LEFT TABLE UNCOMMON VALUE
select employees.first_name,departments.department_name
from employees
	left join departments on employees.department_id=departments.department_id;
    
-- CROSS JOIN IS CONTAIN COMMON UNCOMMON VALUE FROM LEFT AND RIGHT TABLE

select employees.first_name,departments.department_name
from employees
	cross join departments on employees.department_id=departments.department_id;






