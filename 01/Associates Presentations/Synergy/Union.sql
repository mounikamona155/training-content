CREATE table student([id] int,[names] varchar(20),[marks] int);--creating two tables
CREATE table student1([id] int,[names] varchar(20),[marks] int);
insert into student1(id,names,marks)  values(8,'aa',56);--inserting data into student1 table
insert into student1(id,names,marks)  values(4,'bb',57);
insert into student1(id,names,marks)  values(3,'mounika',64);
insert into student(id,names,marks)  values(11,'abdul',59);
insert into student(id,names,marks)  values(12,'mounika',64);
insert into student(id,names,marks)  values(14,'abdul',59);
insert into student1(id,names,marks)  values(15,'chukka',29);
insert into student1(id,names,marks)  values(18,'chukka',29);





---displaying two tables data-----
SELECT * from student
select * from student1;

SELECT * from student
select * from student1;
-----UNION............
select names from student union select names from student1;--union opearaters on two tables....
select id from student union select id from student1;

SELECT * from student
select * from student1;

--UNION ALL....
select id from student union all select id from student1;
select names from student union all select names from student1;
------------

SELECT * from student
select * from student1;
----EXCEPT:----
SELECT names FROM student EXCEPT SELECT names FROM student1;
SELECT names FROM student1 EXCEPT SELECT names FROM student;


SELECT * from student
select * from student1;
--intersection:.....
select id from student INTERSECT select id from student1;--intersection:.....on two tables....
select names from student INTERSECT select names from student1;





