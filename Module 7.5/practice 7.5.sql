use dummydb;


-- 1.Show the employee names and corresponding job_titles without using JOIN query

select employees.first_name,jobs.job_title
from employees,jobs
where employees.job_id=jobs.job_id;

-- 2. Do the question no 1 using JOIN query

select e.first_name,j.job_title
from employees as e
	join jobs as j
    on e.job_id=j.job_id;


-- Show the name of the employee and the job_title who receives the maximum salary
select e.first_name,j.job_title,e.salary,j.max_salary
from employees as e
	join jobs as j
    on e.job_id=j.job_id
where salary=(select max(salary)
				from employees);

-- Or
select e.first_name,j.job_title,e.salary,j.max_salary
from employees as e
	join jobs as j
    on e.job_id=j.job_id
order by e.salary desc limit 1;


-- Show the list of employee name and corresponding manager names.
select m.first_name,e.first_name
from employees as m
	join employees as e
    on m.manager_id=e.employee_id;


