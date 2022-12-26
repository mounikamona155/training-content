create DATABASE EmployeeData;

create table Employee_Data (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	age INT,
	gender VARCHAR(50),
	salary INT,
	department VARCHAR(50)
);

create table Employee_Data1 (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	age INT,
	gender VARCHAR(50),
	salary INT,
	department VARCHAR(50)
);

insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (1, 'Karel', 'Musso', 'kmusso0@apache.org', 23, 'Male', 1511, 'Engineering');
insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (2, 'Madonna', 'Tratton', 'mtratton1@unc.edu', 22, 'Female', 1565, 'Research and Development');
insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (3, 'Devin', 'McKibbin', 'dmckibbin2@utexas.edu', 50, 'Genderqueer', 2494, 'Accounting');
insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (4, 'Cristiano', 'Dillamore', 'cdillamore3@nps.gov', 24, 'Male', 1226, 'Support');
insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (5, 'Milena', 'Thewlis', 'mthewlis4@cnet.com', 54, 'Female', 769, 'Business Development');
insert into Employee_Data1 (id, first_name, last_name, email, age, gender, salary, department) values (6, 'Bertine', 'Beacham', 'bbeacham5@squidoo.com', 55, 'Female', 1210, 'Support');


insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (1, 'Karel', 'Musso', 'kmusso0@apache.org', 23, 'Male', 1511, 'Engineering');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (2, 'Madonna', 'Tratton', 'mtratton1@unc.edu', 22, 'Female', 1565, 'Research and Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (3, 'Devin', 'McKibbin', 'dmckibbin2@utexas.edu', 50, 'Genderqueer', 2494, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (4, 'Cristiano', 'Dillamore', 'cdillamore3@nps.gov', 24, 'Male', 1226, 'Support');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (5, 'Milena', 'Thewlis', 'mthewlis4@cnet.com', 54, 'Female', 769, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (6, 'Bertine', 'Beacham', 'bbeacham5@squidoo.com', 55, 'Female', 1210, 'Support');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (7, 'Korey', 'Joselin', 'kjoselin6@google.fr', 34, 'Male', 573, 'Human Resources');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (8, 'Sheree', 'Ranshaw', 'sranshaw7@walmart.com', 23, 'Female', 1762, 'Legal');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (9, 'Domenico', 'Accum', 'daccum8@disqus.com', 35, 'Male', 701, 'Support');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (10, 'Willette', 'Thew', 'wthew9@adobe.com', 54, 'Female', 1797, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (11, 'Lynea', 'Crowcombe', 'lcrowcombea@feedburner.com', 26, 'Female', 443, 'Services');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (12, 'Dalis', 'Cloonan', 'dcloonanb@imageshack.us', 58, 'Bigender', 912, 'Legal');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (13, 'Nicholas', 'McNeillie', 'nmcneilliec@wordpress.com', 52, 'Male', 1213, 'Product Management');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (14, 'Bethena', 'Cushworth', 'bcushworthd@wikimedia.org', 46, 'Bigender', 1989, 'Training');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (15, 'Jannelle', 'Overstall', 'joverstalle@godaddy.com', 29, 'Female', 2202, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (16, 'Faina', 'Bloxham', 'fbloxhamf@shareasale.com', 48, 'Female', 434, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (17, 'Alicea', 'Pain', 'apaing@dmoz.org', 26, 'Female', 706, 'Support');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (18, 'Bradan', 'Laird-Craig', 'blairdcraigh@over-blog.com', 35, 'Male', 1723, 'Engineering');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (19, 'Garwood', 'Moylane', 'gmoylanei@microsoft.com', 22, 'Male', 281, 'Human Resources');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (20, 'Ulrica', 'Fenna', 'ufennaj@tumblr.com', 31, 'Non-binary', 1434, 'Training');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (21, 'Griffith', 'Meuse', 'gmeusek@soup.io', 58, 'Male', 2105, 'Research and Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (22, 'Tish', 'Rodgman', 'trodgmanl@adobe.com', 42, 'Female', 1924, 'Marketing');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (23, 'Grove', 'Knobell', 'gknobellm@cnbc.com', 48, 'Male', 669, 'Product Management');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (24, 'Aldin', 'Werendell', 'awerendelln@usatoday.com', 26, 'Male', 2379, 'Sales');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (25, 'Anthe', 'MacLleese', 'amaclleeseo@who.int', 57, 'Female', 1582, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (26, 'Peggi', 'Peyro', 'ppeyrop@histats.com', 26, 'Polygender', 2382, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (27, 'Ursa', 'Lob', 'ulobq@utexas.edu', 40, 'Polygender', 1339, 'Product Management');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (28, 'Ailis', 'Danaher', 'adanaherr@mail.ru', 33, 'Female', 2324, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (29, 'Curtice', 'Mallion', 'cmallions@hubpages.com', 37, 'Male', 2263, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (30, 'Germain', 'Lehrian', 'glehriant@i2i.jp', 56, 'Male', 1647, 'Support');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (31, 'Trev', 'Cinelli', 'tcinelliu@fema.gov', 39, 'Male', 2391, 'Accounting');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (32, 'Miguel', 'Frodsam', 'mfrodsamv@angelfire.com', 43, 'Male', 2315, 'Human Resources');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (33, 'Dwayne', 'Iacovelli', 'diacovelliw@yellowpages.com', 50, 'Male', 2161, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (34, 'Alyss', 'January', 'ajanuaryx@ocn.ne.jp', 33, 'Female', 1156, 'Business Development');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (35, 'Lorrayne', 'Kanzler', 'lkanzlery@jugem.jp', 46, 'Female', 1061, 'Sales');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (36, 'Kent', 'Gallen', 'kgallenz@4shared.com', 28, 'Male', 278, 'Legal');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (37, 'Pablo', 'Verney', 'pverney10@dmoz.org', 31, 'Male', 1685, 'Training');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (38, 'Lanita', 'Guerriero', 'lguerriero11@unblog.fr', 51, 'Female', 119, 'Marketing');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (39, 'Jameson', 'Mickelwright', 'jmickelwright12@google.fr', 46, 'Male', 1998, 'Services');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (40, 'Darin', 'Foulgham', 'dfoulgham13@github.com', 30, 'Male', 1927, 'Product Management');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (41, 'Harley', 'Babon', 'hbabon14@instagram.com', 34, 'Male', 475, 'Sales');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (42, 'Ursuline', 'Line', 'uline15@senate.gov', 53, 'Female', 344, 'Marketing');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (43, 'Wes', 'Lecky', 'wlecky16@jalbum.net', 42, 'Male', 826, 'Product Management');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (44, 'Becka', 'Chritchlow', 'bchritchlow17@reverbnation.com', 37, 'Female', 1897, 'Human Resources');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (45, 'Ralina', 'Heiton', 'rheiton18@nbcnews.com', 26, 'Female', 178, 'Human Resources');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (46, 'Inez', 'Peatheyjohns', 'ipeatheyjohns19@rakuten.co.jp', 24, 'Female', 756, 'Engineering');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (47, 'Orsa', 'Deery', 'odeery1a@blogger.com', 42, 'Female', 1156, 'Training');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (48, 'Christopher', 'Misk', 'cmisk1b@google.ru', 22, 'Male', 1763, 'Engineering');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (49, 'Bobby', 'Dewdney', 'bdewdney1c@bandcamp.com', 44, 'Male', 998, 'Services');
insert into Employee_Data (id, first_name, last_name, email, age, gender, salary, department) values (50, 'Sabrina', 'Maha', 'smaha1d@tmall.com', 24, 'Female', 1248, 'Human Resources');


-- Operators

 SELECT * FROM Employee_Data;
 SELECT * FROM Employee_Data where gender='Male';-- =operation
 SELECT * FROM Employee_Data WHERE salary>1511 or department='Engineering';
 SELECT first_name,department FROM Employee_Data where department not in('Engineering','Accounting');  --in
 SELECT first_name , salary from Employee_Data where salary NOT BETWEEN 1500 and 2000;
 SELECT First_name FROM Employee_Data WHERE age <50;
 SELECT First_name FROM Employee_Data WHERE First_name  LIKE 'S%';
 SELECT SUBSTRING('reveature',2,3) FROM Employee_Data;
 SELECT DISTINCT department FROM Employee_Data ;
 SELECT avg(salary) from Employee_Data;
 SELECT COUNT(first_name) FROM Employee_Data;
 SELECT MAX(salary) FROM Employee_Data;
 SELECT MIN(salary) FROM Employee_Data;
 SELECT SUM(salary) FROM Employee_Data;



-- Subquery's


SELECT first_name,salary from Employee_Data 
where salary <(select Avg(salary) from Employee_Data);

select id,department,first_name,gender from employee_data --multiple row single column
where department  not in (Select distinct(department) from employee_data
where gender not like 'Female');


select e.first_name,e.department,e.salary from employee_data e, --multiple row multiple colum
(select department,max(salary) as maxSalary from employee_data
GROUP BY department) mS
where e.department=mS.department and e.salary=mS.maxSalary;


-- CTE (Common Tabel Expression)


select * from employee_data e1 ---correlated who earns more than the avg salary from each department
where salary>(select avg(salary)from employee_data e2
where e1.department=e2.department);



select * from ctedb;
select * from mock_data;


create table ctedb (
	product_id INT,
	product_name VARCHAR(50),
	price INT,
);

insert into ctedb (product_id, product_name, price) values (6001, 'laptop', 20000);
insert into ctedb (product_id, product_name, price) values (6002, 'mobile phone', 7000);
insert into ctedb (product_id, product_name, price) values (6003, 'calculator', 500);
insert into ctedb (product_id, product_name, price) values (6001, 'laptop', 20000);
insert into ctedb (product_id, product_name, price) values (6003, 'calculator', 500);
insert into ctedb (product_id, product_name, price) values (6002, 'mobile phone', 7000);
insert into ctedb (product_id, product_name, price) values (6001, 'laptop', 20000);
insert into ctedb (product_id, product_name, price) values (6004, 'modem', 3000);
insert into ctedb (product_id, product_name, price) values (6004, 'modem', 3000);
insert into ctedb (product_id, product_name, price) values (6002, 'mobile phone', 7000);


-- viewing with CTE
with ctename
as (select product_name, price from ctedb)
select * from ctename;


-- insert with CTE
with ctename
as (select * from ctedb)
INSERT into ctename (product_id, product_name, price) values (6005, 'books', 200)


-- delete with CTE
with ctename
as (select * from ctedb)
DELETE from ctename WHERE product_id = 6005;



-- update with cte
with cte_name
as (select * from ctedb)
UPDATE cte_name
set price = 5000
where product_name = 'modem';
select * from cte_name;


-- remove duplicate
with remove_duplicate
AS
(
    select *, ROW_NUMBER() over (PARTITION BY product_id ORDER BY product_id) as ID
    from ctedb
)
select * from remove_duplicate;
select * from remove_duplicate where ID <= 1;
delete from remove_duplicate where ID > 1;



-- multiple CTE
with 
china_customers 
as (select * from mock_data where country = 'China'),
russia_customers
as (select * from mock_data where country = 'Russia')
select * from china_customers
union
select * from russia_customers;

-- Logical Operator Execution

CREATE TABLE Employees (id int, [name] varchar(20), age int, city varchar(40) );
SELECT * FROM Employees;
INSERT INTO Employees (id, name, age, city) VALUES (1, 'sam', 35, 'delhi');
INSERT INTO Employees (id, name, age, city) VALUES (2, 'ram', 15, 'nellore');
INSERT INTO Employees (id, name, age, city) VALUES (3, 'pam', 30, 'kochi');
INSERT INTO Employees (id, name, age, city) VALUES (4, 'siri', 37, 'delhi');
INSERT INTO Employees (id, name, age, city) VALUES (5, 'sailu', 22, 'chennai');
INSERT INTO Employees (id, name, age, city) VALUES (6, 'sree', 65, 'mumbai');
INSERT INTO Employees (id, name, age, city) VALUES (7, 'san', 25, 'chennai');
SELECT * FROM Employees;
--
--
--
SELECT city,count(city)
FROM Employees
Where city='delhi'
GROUP bY city
HAVING COUNT(city) < 3
ORDER by COUNT(city) desc
LIMIT 2;