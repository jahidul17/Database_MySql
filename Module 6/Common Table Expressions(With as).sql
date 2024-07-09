
select*
from employees
limit 5;


-- use Common Table Expressions(With as)-- 
with TEMP as(
select*
from employees
limit 5
)
select *
from TEMP;


