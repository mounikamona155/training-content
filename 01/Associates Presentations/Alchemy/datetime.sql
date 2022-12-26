SELECT CURRENT_TIMESTAMP;

/*This function returns the current database system timestamp as a datetime value, 
without the database time zone offset. */

SELECT DATEDIFF(day,
   '2007-05-07 09:53:01.0376635',
   '2007-05-08 09:53:01.0376635');

 /* This function returns the count (as a signed integer value) of the specified datepart 
 boundaries crossed between the specified startdate and enddate */


SELECT DATENAME(month,'2007-10-30 12:15:32.1234567 +05:10');

--This function returns a character string representing the specified datepart of the specified date.

SELECT SYSDATETIME();

--Returns a datetime2(7) value that contains the date and time of the computer on which the instance of SQL Server is running.

SELECT DATEFROMPARTS ( 2010, 12, 31 ) 

--This function returns a date value that maps to the specified  year, month, and day values.

SELECT DATE_BUCKET(DAY, 10, SYSUTCDATETIME());

/*THis function returns the date-time value corresponding to
 the start of each date-time bucket from the timestamp defined by
  the origin parameter, or the default origin value of 
  1900-01-01 00:00:00.000 if the origin parameter isn't specified.*/ 


SELECT getdate();
--Returns to current date with time


SELECT cast(GETDATE() AS date)
--Returns to current date


SELECT cast(GETDATE() AS time)
--Returns to current time.


SELECT MONTH('2007-04-30T01:01:01.1234567 -07:00');
--Returns an integer that represents the year of the specified    date.


SELECT day('2010-04-30T01:01:01.1234567-07:00');
 -- Return the weekday name for a date:


 SELECT DATEADD(month, 1, '2006-08-31');
--This function adds a number (a signed integer) to a datepart of an input date, and returns a modified date/time value.

SELECT DATEPART(week, '2007-04-21 ') as week,
 DATEPART(weekday, '2007-04-21 ') as weekday
 --This function returns an integer representing the specified datepart of the specified date.

 SELECT GETDATE();
 --Returns the current database system timestamp as a datetime value without the database time zone offset.

 SELECT TIMEFROMPARTS ( 23, 59, 59, 0, 0 ) AS Result;
 --Returns a time value for the specified time and with the specified precision.

 /*
 References
 https://learn.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-ver16 */


