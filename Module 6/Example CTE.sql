with AVGIT as(
	select avg(salary) as SAL1
    from employees
    where department_id=60 -- IT
),
MAXMKT as
(
	select max(salary) as SAL2
    from employees
    where department_id=20 -- Marketing
)

select *
from employees
where salary >(select SAL1 from avgit) and salary<(select SAL2 from MAXMKT);