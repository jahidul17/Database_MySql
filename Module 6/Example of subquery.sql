use dummydb;

select *
from employees
where employee_id=144;

select *
from employees
where salary<2500;

-- use subquery
select *
from employees
where salary<(select salary
			from employees
			where employee_id=144);

-- who is highest salary?
-- group function
select max(salary)
from employees;

-- use subquery
select *
from employees
where salary=(select max(salary)
				from employees);


-- query
select *
from departments;

select*
from employees
where department_id=20;

select department_id
from departments
where department_name='marketing';

-- use subquery
select *
from employees
where department_id=(select department_id
					from departments
					where department_name='marketing');

-- how much them avg salary
select avg(salary) as members
from employees
where department_id=(select department_id
					from departments
					where department_name='marketing');

-- count it department
select count(*) as members
from employees
where department_id=(select department_id
					from departments
					where department_name='it');

-- how much salary all programmer monthly from job table-- 
select sum(salary)
from employees
where job_id=(select job_id
				from jobs
                where job_title='programmer');


