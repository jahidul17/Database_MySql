
select salary
from employees;

select count(salary)
from employees;

select sum(salary)
from employees;

select max(salary)
from employees;

select avg(salary)
from employees;

-- null can not count this function
select count(salary)
from employees;

-- null can count this function thats means total row count
select count(*)
from employees;