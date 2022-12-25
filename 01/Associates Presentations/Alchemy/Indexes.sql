CREATE DATABASE WorkDetails;

CREATE TABLE tableEmployee (
    [Id] int IDENTITY(1,1),
    [Name] VARCHAR(25) not NULL,
    [Salary] int not NULL,
    [Gender] VARCHAR(10),
    PRIMARY KEY (Id)
);

INSERT INTO tableEmployee(Name, Salary, Gender) VALUES ('Sam', 2500, 'Female'), ('Ram', 3000, 'Male'),
('Sham',6000, 'Male'), ('Sara',4500, 'Female');

-- using normal methods
 Select * from tableEmployee where Salary > 4000 and Salary < 7000;

 -- using Indexes
 CREATE INDEX IX_tableEmployee_Salary ON tableEmployee (Salary ASC);

 DROP INDEX tableEmployee.IX_tableEmployee_NameAndGender;
 CREATE INDEX IX_tableEmployee_NameAndGender ON tableEmployee (Name ASC, Gender);
 
 -- to find indexes on table
  EXEC sp_Helpindex tableEmployee;

 SELECT * from tableEmployee WITH(index(IX_tableEmployee_Salary));
 SELECT * FROM tableEmployee WITH(index(IX_tableEmployee_NameAndGender));

 ALTER TABLE tableEmployee ADD Email VARCHAR(30);
 
 SELECT * FROM tableEmployee;
 --INSERT INTO tableEmployee(Email) VALUES ('Sam1@gmail.com'), ('Ram@gmail.com'), ('Sham@gmail.com'), ('Sara@gmail.com');
 -- SELECT 
--FROM Table WITH(INDEX(Index_Name))
  
 -- to drop index => drop index tableEmployee.IX_tableEmployee_Salary

--CREATE TABLE tableEmployee (
   -- [Id] int IDENTITY(1,1),
  --  [Name] VARCHAR(25) not NULL,
  --  [Salary] int not NULL,
  --  [Gender] VARCHAR(10),
  --  PRIMARY KEY (Id)
--);
SELECT DATEDIFF(day, '1997-12-15','2022-12-23');



