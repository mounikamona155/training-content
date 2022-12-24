### Stored Procedures
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.collection of pre-compiled SQL statements . It begins to start executing when we call it (like functions in programming language).
## Why stored procedures
So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

functions has only input parameters where as stored procedures as input parameters , output parameters  and return values and it will return only one integer values that too single value
## syntax for creating procedure
``` text 
Create proc procedure_name
All
begin
***Sql statements
End
```
## example
``` text 
create procedure spemployees
All
Begin
select empname,gender from employees where gender='male'
end
```
## To exceute stored procedure
``` test
Execute procedure_name;
Exce  procedure_name;
procedure_name
```
## Example
``` text 
exce speployees
Execute spemployees
spemployees
```
## Altering the stored procedure
``` text 
create procedure spemployees
All
Begin
select empname,gender from employees where gender='male'
end
```
## example
``` text 
Alter procedure spemployees
All
Begin
select empname,gender from employees where gender='female'
end
```
## Creating procedures with multiple parameters
``` text 
Create proc  procedure_name
@variable datatype ,
@variable datatype
As
Begin
**select sql statements
end;
```
## example
``` text 
Create proc  spgetemployeesbygender
@id int,
@gender varchar(5)
As
Begin
select id ,gender from employees where id=@id and gender=@gender
end;
```
## Exceute multiple parameters
``` text 
exec procedure_name '  ' , ' '
exec spgetemployeesbygender '1' ,'male'
```
## system stored procedures
```text 
sp_help	  :  It provides details on any database object.
sp_helpdb :	It provides the details of the databases defined in the SQL Server.
sp_helptext :	It provides the text of a stored procedure reside in SQL Server
sp_depends:	It provides the details of all database objects that depend on the specific database object.
```
## encryption of stored procedure
``` text 
Create proc procedure_name
WITH ENCRYPTION
All
begin
***Sql statements
End
```
## Example
``` text 
create procedure spemployees
WITH ENCRYPTION
All
Begin
select empname,gender from employees where gender='male'
end
```
## creating procedures with output parameters
``` text
CREATE PROCEDURE spgetemployeecountbygender
    @gender  varchar(6),
    @employeecount int OUTPUT

AS
BEGIN
   SELECT @employeecount=count(Id) from employees where gender=@gender 
End
```
## executing the output parameters
``` text 
declare @Totalcount int
Execute spgetemployeescountbygender @employeecount = @totalcount and @gender = 'Male'
select @totalcount
```
### creating stored procedures with return values
``` text
CREATE PROCEDURE spgetemployeecount
AS
BEGIN
return(select count(Id) from employees)
END
```
## Executing stored procedures with return values
``` text
declare @totalcount int 
Execute @totalcount =spgetemployeecount
```
## pros
``` text
Reusable Execution plan Rather than the query, SP makes a cache of the Execution plan while saving it which can be reused
Sharing Stored procedure can be shared among the different applications over the queries that used within the code.
Protection over Sql Injection Sp provides security over injection attacks by using the checks rather than the query
One place change It provides with a benefit to change in one place that reflect changes wherever it is used.
Executing permissions SP has a feature where we can give the executing permission only to a user The server only passes the procedure name instead of the whole query, reducing network traffic.
```
## cons
```text
if we overuse many logical applications inside stored procedures, the CPU usage will increase. It is because the database server is not well designed for logical operations.
It is difficult to debug stored procedures.
MySQL does not provide facilities for debugging stored procedures. Note:-------------------Show procedure status;
A stored procedure can have a0 to 2100 parameters specified.
```


creating stored procedure for single &Mutiple parameters(https://youtu.be/Qu3E-oncF3g)


creating procedure with output parameters(https://youtu.be/bldBshxuhMk)
creating procedure with return values(https://youtu.be/st8RnNg_LLA)