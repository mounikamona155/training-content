create SCHEMA emp
go
create table emp.EmployeeDetails(
    empId int IDENTITY(1,1) PRIMARY KEY,    
    empName varchar(max) not null,
    empSalary SMALLMONEY
);
go
create table emp.Department(
    depId int IDENTITY(1,1) PRIMARY KEY,
    depName VARCHAR(50)
);
go 
-- many to many relationship one employee can work for many departments and vice  versa, for this there needs to have a bridge/junction/join table
create TABLE emp.EmployeeDetails_departments
(
    empId int FOREIGN KEY REFERENCES emp.EmployeeDetails(empId),
    depId int FOREIGN KEY REFERENCES emp.Department(depId)
)

---insert employees---
insert into emp.EmployeeDetails
values('Ashu', 9000),
    ('Simran', 19000),
    ('Fred', 6000),
    ('Nick', 3000)

insert into emp.Department
values('Technology'),('HR')
select * from emp.Department
select * from emp.EmployeeDetails

insert into emp.EmployeeDetails_departments
values(5,1),(6,2),(2,1),(3,2),(4,1),(4,2)

-- Aggregrate Functions
-- These functions will use all data of a column to do some sort of manipulation

-- count 
select COUNT(e.empName) as 'Total employees' from emp.EmployeeDetails as e

-- sum
select SUM(e.empSalary) as 'Total salaries' from emp.EmployeeDetails as e

-- min
select min(e.empSalary) as 'Lowest salary' from emp.EmployeeDetails as e
-- max
select max(e.empSalary) as 'Highest salary' from emp.EmployeeDetails as e
-- what if I want to know how many employees have 19000 as their salary
select count(e.empName) as 'Total employees', e.empSalary from emp.EmployeeDetails as e
where e.empSalary =19000
group by e.empSalary

-- Find average salary of all employees in Technology department
select AVG(e.empSalary) as 'Average salary in technology department' from emp.EmployeeDetails e
inner join emp.EmployeeDetails_departments ed on e.empId =  ed.empId
INNER JOIN emp.Department d on d.depId = ed.depId
where d.depName like '_ech%'

------ Multiplicity
create schema Random
go
create table Random.Person(
    Aadhar int PRIMARY Key,
    PersonName VARCHAR(50),
    PersonAge int
)
create table Random.finger(
     fingerId int PRIMARY KEY,
     fingerLength int
 )

 -- one to many Person:Fingers
 alter TABLE random.finger
    add personAadhar bigint FOREIGN KEY REFERENCES RANDOM.Person(Aadhar)
alter table Random.Heart
 drop CONSTRAINT UQ__Heart__709355140E95D225
alter table Random.Heart
 drop CONSTRAINT FK__Heart__PersonAad__06CD04F7
alter table Random.Heart
    drop COLUMN PersonAadhar

alter table Random.Person
  drop CONSTRAINT  PK__Person__6C9F238F2F83FF0F
alter table Random.Person
   alter column Aadhar bigint not null
alter table Random.Person
  add CONSTRAINT PK_Employee_Aadhar PRIMARY KEY (Aadhar)

GO
CREATE table Random.Heart(
    HeartId int PRIMARY KEY,
    HeartSize int,
    healthy bit,
    PersonAadhar int unique FOREIGN KEY REFERENCES random.person(Aadhar) -- 1 to 1 relationship
)
-- 1 to 1 relationship Person:Heart
alter table Random.Heart
 add PersonAadhar bigint UNIQUE FOREIGN KEY REFERENCES random.person(Aadhar)
 
insert into Random.Person
VALUES (98765432100, 'Fred', 40),
(87654323458, 'Ravi', 55)

insert into Random.Heart 
values (1, 4, 1, 87654323458 )

select * from Random.Person
SELECT * from Random.Heart

select p.Aadhar, p.PersonName, p.PersonAge, h.healthy, h.HeartId, h.HeartSize from Random.Person as p
left outer join Random.Heart as h on p.Aadhar = h.PersonAadhar

BEGIN TRAN
UPDATE [Random].[Heart]
SET
    [HeartSize] = 4,
    [healthy] = 1
WHERE PersonAadhar = 87654323458


select * from Random.Heart
SELECT @@TRANCOUNT as OpenTransactions
Rollback TRAN

SELECT * from Random.Heart
SELECT @@TRANCOUNT as OpenTransactions
GO