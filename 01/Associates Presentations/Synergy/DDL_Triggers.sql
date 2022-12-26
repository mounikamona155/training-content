-- Trigger for database level

CREATE TRIGGER [safety]   
ON DATABASE   
FOR DROP_TABLE, ALTER_TABLE   
AS   
   PRINT 'You cannot perform drop table or alter table'   
   ROLLBACK; 


-- Diplay Table
SELECT *
FROM SalesLT.Customer;

-- Alter Table
alter table SalesLT.Customer
alter COLUMN[PasswordSalt] VARCHAR(10)


-- Trigger DROP
DROP TRIGGER [safety]
ON DATABASE;

--Trigger Disable
DISABLE TRIGGER [safety]
on DATABASE;

--Trigger enable
ENABLE TRIGGER [safety]
on DATABASE;

