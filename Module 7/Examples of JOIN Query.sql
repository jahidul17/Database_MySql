

-- SELF JOIN EXAMPLE WHEN MANAGER ID AND EMPLOYEE ID SAME WHO IS MANAGER
select m.first_name,e.first_name
from employees as e
	join employees as m
    on e.employee_id=m.manager_id;
 
-- Select or show department name whose department have no employee?

SELECT departments.department_name
	FROM departments
    LEFT JOIN employees
    ON departments.DEPARTMENT_ID=employees.DEPARTMENT_ID
WHERE employees.DEPARTMENT_ID IS NULL;
 
-- Show emp_first name , salary When how much less salary from his dept vag salary?
select employees.first_name,employees.salary,
	(select avg(salary) from employees where department_id=employees.department_id)-employees.salary
from employees
	join departments
		on employees.department_id=departments.department_id;
        
        
        



