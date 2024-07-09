use dummydb;
select first_name
from employees
where salary>15000
union
select first_name
from employees
where department_id=10;

select first_name
from employees
where salary>12000
union all
select first_name
from employees
where department_id=90;

select department_id
from employees
union
select department_id
from departments;

select department_id
from employees
union all
select department_id
from departments;

select department_id
from employees
intersect
select department_id
from departments;

select department_id
from employees
MINUS -- Right now this keyword is not use compiler
select department_id
from departments;






