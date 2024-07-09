-- how much second higest salary and who get?-- 

select salary
from employees
order by salary desc;

-- way one-- 
-- distinct means unique
select distinct salary
from employees
order by salary desc
limit 1
offset 1;

-- way two use subquery
select *
from employees
where salary=(select distinct salary
from employees
order by salary desc
limit 1
offset 1);

-- good way
select max(salary)
from employees
where salary<(select max(salary)
				from employees);
-- then who
select *
from employees
where salary=(select max(salary)
				from employees
				where salary<(select max(salary)
								from employees));




-- whose are salary greater than manager?
select*
from employees as EMP
where salary>(select salary
				from employees as MGR
                where EMP.manager_id=MGR.employee_id);


-- whose are employee same catagory job like manager job?

select*
from employees as EMP
where job_id=(select job_id
				from employees as MGR
                where EMP.manager_id=MGR.employee_id);






