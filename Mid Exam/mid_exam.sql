create database Mid_Exam;
use mid_Exam;

create table Employees(
Fist_Name varchar(20) not null,
Last_Name varchar (20),
Date_of_Birth date,
Department_id int not null,
Salary int,
primary key(Department_id)
);

create table Departments (
Department_Id int not null,
Department_Name varchar(50),
FOREIGN KEY (Department_Id) REFERENCES Employees(Department_id)
);

use dummydb;
-- 4/ Write SQL Query to get the second max salary 
select *
from employees
where salary=(select max(salary) as Salary
				from employees
				where salary<(select max(salary) 
							from employees
							));

-- 5/ Write SQL Query to show  the department names and the average salary of the departments

select d.department_name,avg(salary)
from employees as e
	join departments as d
    on d.department_id=e.department_id	-- for join table
where d.department_id =e.department_id	 -- for group
group by d.department_id;

-- 8/ Show the names of the employees who get less salary than Steven
select employees.first_name
from employees
where salary<(select salary
				from employees
                where first_name="Steven"
                limit 1);
                               
 -- 9/ Count the number of employees of each job type               
                    
select j.job_title,count(*) as members
from employees as e
			join jobs as j
            on e.job_id=j.job_id -- for join table
where e.job_id=j.job_id  -- for group
group by e.job_id;


-- 10/ Show the names of Departments which doesn’t have any employees

select d.department_name
from departments as d
	left join employees as e
    on d.department_id = e.department_id
where e.department_id is null;





