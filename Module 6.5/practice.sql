use dummydb;

select*
from employees;


-- Determine the third highest salary and which employee receives it?

select max(salary)
from employees
where salary<(
	select max(salary)
	from employees
    where salary<(select max(salary)
					from employees)
					);
-- and
select *
from employees
where salary=(select max(salary)
from employees
where salary<(
	select max(salary)
	from employees
    where salary<(select max(salary)
					from employees)
					));
                    
                    
-- Determine the third lowest salary and which employee receives it?

select min(salary)
from employees
where salary>(
	select min(salary)
	from employees
    where salary>(select min(salary)
					from employees)
					);

-- and

select max(salary)
from employees
where salary<(
	select max(salary)
	from employees
    where salary<(select max(salary)
					from employees)
					);
-- and

select *
from employees
where salary=(select min(salary)
from employees
where salary>(
	select min(salary)
	from employees
    where salary>(select min(salary)
					from employees)
					));
                    
                    
-- Which employee has been hired after Steven?

-- select *
-- from employees
-- where employee_id=(select employee_id
-- 						from employees
-- 						where first_name='Steven'
--                         );





-- With common table expression solve the question 1 and 2 
-- From 1
with ThirdHighest as(
					select max(salary) as MaxSal
					from employees
					where salary<(
						select max(salary)
						from employees
						where salary<(select max(salary)
										from employees)
										)
)

select*
from employees
where salary=(select MaxSal from ThirdHighest);

-- From 2

with ThirdLowest as(
	select min(salary) as MinSal
    from employees
    where salary>(
				select min(salary)
                from employees
                where salary>(
					select min(salary)
                    from employees
                )
    )
)
select *
from employees
where salary=(select MinSal from ThirdLowest);


