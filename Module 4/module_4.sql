use dummydb;

select*
from employees
where department_id = 60;

select first_name,salary,salary+10000
from employees;

select first_name,salary,salary+10000
from employees
where department_id=100;

select *,salary+10000
from employees
where department_id=100;

select distinct job_id
from employees;

select *
from employees
order by salary asc;

select *
from employees
order by salary desc;


select *
from employees
order by salary desc
limit 5;


select *
from employees
order by salary desc
limit 4,5;
-- remove first 4 row then show 5 row
-- same as

select *
from employees
order by salary desc
limit 5
offset 4;
-- remove first 4 row then show 5 row

select *
from employees
where last_name LIKE 'green%';


select *
from employees
where last_name LIKE '%ee%';

-- as keyword defined to change fild name
select first_name as NAME,salary,salary+10000 as 'INCREASED SALARY'
from employees;
