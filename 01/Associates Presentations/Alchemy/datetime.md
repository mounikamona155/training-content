# DATETIME FUNCTIONS 
 
## WHAT IS DATETIME FUNCTIONS
* A DateTime function performs an action or calculation on a date and time values . Use a DateTime function to add or subtract intervals , find the current, find the first or last day of month, exctact a component of a DateTime value, or convert a value to  different format.

## WHY WE USE DATETIME FUNCTIONS
* The MySQL Date function is responsible for extracting the data section from the specified date or, expression DateTime. In MySQL, DATE () functions are used to store DateTime values and help to return the current date and time both parts when retrieved and displayed in the MySQL Server format ‘YYYY-MM-DD HH:MM: SS’.

## WHAT ARE DATETIME FUNCTIONS

#### CURRENT_TIMESTAMP
* This function returns the current database system timestamp as a datetime value, without the database time zone offset.   CURRENT_TIMESTAMP derives this value from the operating system of the computer on which the instance of SQL Server runs.. 
``` SQL         
SYNTAX :
CURRENT_TIMESTAMP
EXAMPLE
SELECT CURRENT_TIMESTAMP;
```    
### DATEDIFF
* This function returns the count (as a signed integer value) of the specified datepart boundaries crossed between the specified startdate and enddate.
```SQL
SYNTAX :
DATEDIFF ( datepart , startdate , enddate )
EXAMPLE ;
SELECT DATEDIFF(day,
   '2007-05-07 09:53:01.0376635',
   '2007-05-08 09:53:01.0376635');
```
### DATENAME 
* His function returns a character string representing the specified datepart of the specified date.
```SQL
SYNTAX :
DATENAME ( datepart , date )
EXAMPLE ;
SELECT DATENAME(datepart,'2007-10-30 12:15:32.1234567 +05:10');
```
### SYSDATETIME
* Returns a datetime2(7) value that contains the date and time of the computer on which the instance of SQL Server is running.
```SQL
SYNTAX :
SYSDATETIME ( )
EXAMPLE
SELECT SYSDATETIME();
   ----------------  
7/20/2013 2:49:59 PM
```
### DATEFROMPARTS
* This function returns a date value that maps to the specified  year, month, and day values.
```SQL
SYNTAX :
DATEFROMPARTS ( year, month, day )
EXAMPLE
SELECT DATEFROMPARTS ( 2010, 12, 31 ) AS Result;
Result    
2010-12-31
```
### DATE_BUCKET
* His function returns the date-time value corresponding to the start of each date-time bucket from the timestamp defined by the origin parameter, or the default origin value of 1900-01-01 00:00:00.000 if the origin parameter isn't specified.
```SQL 
SYNTAX :
DATE_BUCKET (datepart, number, date [, origin ] )
EXAMPLE 
SELECT DATE_BUCKET(DAY, 10, SYSUTCDATETIME());
```
### CURDate
* Returns to current date.
```SQL
STNTAX :
CURDATE();
EXAMPLE
SELECT CURDATE() + 1;
```
### CURTIME
* Returns to current time.
```SQL 
SYNTAX :
CURTIME();
EXAMPLE ;
SELECT CURTIME() + 1;
```
### CURRENT_TIMEZONE
* This function returns the name of the time zone observed by a server or an instance. For SQL Managed Instance, return value is based on the time zone of the instance itself assigned during instance creation, not the time zone of the underlying operating system.
```SQL
SYNTAX :
CURRENT_TIMEZONE()
EXAMPLE ;
SELECT CURRENT_TIMEZONE() ;
```
### MONTH
* Returns an integer that represents the month of the specified date.
```SQL
SYNTAX :
MONTH(DATE)
EXAMPLE ;
SELECT MONTH('2007-04-30T01:01:01.1234567 -07:00');
```
### YEAR
* Returns an integer that represents the year of the specified date.
```SQL
STNTAX :
YEAR ( date )
EXAMPLE ;
SELECT YEAR('2010-04-30T01:01:01.1234567-07:00');
```
### DAY
* Return the weekday name for a date:
```SQL
SYNTAX :
DAY(date)
EXAMPLE ;
SELECT DAY('2015-04-30 01:01:01.1234567');
```
### DATEADD 
* This function adds a number (a signed integer) to a datepart of an input date, and returns a modified date/time value. For example, you can use this function to find the date that is 7000 minutes from today: number = 7000, datepart = minute, date = today.
```SQL
SYNTAX :
DATEADD (datepart , number , date )
EXAMPLE ;
SELECT DATEADD(month, 1, '20060830');
SELECT DATEADD(month, 1, '2006-08-31');
```
### DATEPART
* This function returns an integer representing the specified datepart of the specified date.
```SQL
SYNTAX :
DATEPART ( datepart , date )
EXAMPLE ;
SELECT DATEPART(week, '2007-04-21 '),
 DATEPART(weekday, '2007-04-21 ')
 ```
 ### GETDATE 
* Returns the current database system timestamp as a datetime value without the database time zone offset. This value is derived from the operating system of the computer on which the instance of SQL Server is running.
```SQL
SYNTAX :
GETDATE()
EXAMPLES ;
SELECT GETDATE()
```
### TIMEFROMPARTS
* Returns a time value for the specified time and with the specified precision.
```SQL
SYNTAX :
TIMEFROMPARTS ( hour, minute, seconds, fractions, precision )
EXAMPLE ;
SELECT TIMEFROMPARTS ( 23, 59, 59, 0, 0 ) AS Result;
Result   
23:59:59.0000000 
```
### SYSUTCDATETIME
* Returns a datetime2 value that contains the date and time of the computer on which the instance of SQL Server is running. The date and time is returned as UTC time (Coordinated Universal Time). The fractional second precision specification has a range from 1 to 7 digits.
```SQL
SYNTAX :
SYSUTCDATETIME ( )
EXAMPLE ;
SELECT   ,CONVERT (date, SYSUTCDATETIME())
```
### REFERENCES :
* https://learn.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-ver16













 



