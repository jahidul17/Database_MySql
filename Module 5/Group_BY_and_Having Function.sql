-- Query of group by function

select *
from employees
where department_id=20;

select department_id,max(salary)
from employees
group by department_id;

select department_id,min(salary)
from employees
group by department_id;

select department_id,avg(salary)
from employees
group by department_id;

select department_id,count(*)
from employees
group by department_id;

-- Query of Having function
select department_id,max(salary)
from employees
where department_id !=20
group by department_id;

select department_id,max(salary)
from employees
where department_id !=20
group by department_id
having max(salary)>10000;
-- or
select department_id,max(salary) as sal
from employees
where department_id !=20
group by department_id
having sal>8000;

