CREATE DATABASE Practice

CREATE table numfunctions (slno INT IDENTITY(1,1),numbers float);
INSERT into  numfunctions(numbers) values(33),(3684),(1616),(48.651),(212),(21.5565),(218.56),(-515),(-144),(1085)
 
 SELECT * from numfunctions

 SELECT AVG(numbers) AS Average,count(numbers) AS Count,SUM(numbers) AS SUM  FROM numfunctions
 
 SELECT max(numbers) AS Maximum,min(numbers) AS Minimum FROM numfunctions

 SELECT GREATEST(3, 12, 34, 8, 25)

 SELECT SIN(1)
 
 SELECT numbers,CEILING(numbers) AS CEILING,Floor(numbers) AS Floor,ROUND(numbers,2) as round FROM numfunctions WHERE slno=6

 SELECT numbers, SIGN(numbers) as Sign From numfunctions

 SELECT numbers,ABS(numbers) AS Absolute_value from numfunctions WHERE slno=8

 SELECT LOG(2); --natural log of 2
 SELECT LOG10(2);-- log 2 to the base 10
 SELECT LOG(2,5);-- log 2 to the base 5

 SELECT RAND();--random number between 0-1

 SELECT DEGREES(PI());
 SELECT RADIANS(150.0);

 SELECT numbers,POWER(numbers,2) AS Squares from numfunctions;

 SELECT numbers,SQRT(numbers) as Square_Root from numfunctions WHERE numbers>0;
 
 SELECT STDEV(numbers) AS Standard_deviation from numfunctions

drop table numfunctions