create database Final_Exam;

use Final_Exam;

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    TotalCopies INT NOT NULL,
    AvailableCopies INT NOT NULL
);

CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    ISBN VARCHAR(13),
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);


insert into student
values(04,"Zahidul Islam","lhngo@gmail.com",0184998399,"lkjdjsllhs");
insert into student
values(05,"Zahidul Islam","lhngo@gmail.com",0184998399,"lkjdjsllhs");
insert into student
values(15,"Zahidul Islam","lhngo@gmail.com",0184998399,"lkjdjsllhs");

insert into borrowing
values(05,04,"9781234567890",'2023-12-31','2023-12-31','2023-12-31');


-- Question No 2
insert into Borrowing
values(03,03,(select ISBN
				from Book
				where AvailableCopies=(Select max(AvailableCopies)
				from Book as B
                group by B.Title)),"2024-05-13","2024-05-20","2024-05-21");

-- Question No 3
update book
set AvailableCopies=AvailableCopies -1
where ISBN='9781234567890';

-- Question No 4
select S.Name
from Student as S
	join Borrowing as Br
    on S.StudentID=Br.StudentID
    join Book as B
    on Br.ISBN =B.ISBN 
where B.TotalCopies=(select max(TotalCopies)
					from Book);


-- Question No 5

select B.Title,B.ISBN
from Book as B
	join Borrowing as Br
    on B.ISBN=Br.ISBN
where Br.ReturnDate >Br.DueDate ;


-- Question no 8
use dummydb;

select *
from employees
where salary=(
	select min(salary)
	from employees
	where salary>(select min(salary)
					from employees));


delete from departments
where department_id =10;

-- can not delete because of foreign key constraint

-- So, use this keyword
-- Question 9 of a)

-- when create

create table Job_History(
employee_id int primary key,
start_date varchar(10),
end_date varchar(10),
job_id int not null,
department_id int not null,
foreign key(employee_id) references Employee(employee_id)
on delete cascade
);

-- When Update
alter table job_history
drop foreign key job_history_ibfk_1;

alter table job_history
add constraint job_history_ibfk_1
foreign key(employee_id) references employees(employee_id)
ON DELETE CASCADE;

-- Question 9 of b)
-- When create

create table Employee(
department_id int primary key,
department_name varchar(10),
manager_id int not null,
location_id int not null,
foreign key(department_id) references Department(department_id)
on delete set null
);

-- When Update
alter table Employees
drop foreign key employees_ibfk_2;

alter table Employees
add constraint employees_ibfk_2
foreign key(department_id) references employees(department_id)
on delete set null;




