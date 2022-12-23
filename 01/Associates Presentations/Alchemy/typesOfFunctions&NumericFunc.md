
# **What are functions**?
Functions are methods used to perform data operations. A function is a database object in SQL Server. Basically, it is a set of SQL statements that accept only input parameters, perform actions and return the result.

## **Types Of Functions**:


1. **User-Defined Function**:

    Functions that are created by the user or developer in the system database or a user-defined database are generally known as "user-defined functions". <br><br>The user-defined functions may accept required parameters, perform certain actions, and return the processed data. These custom functions help us to simplify the overall database development by encapsulating the complex business logic and making it available for reuse whenever any similar functionality is required. <br><br>The user-defined functions hold the code that is needed to query data a lot easier to write. It also improves query readability, accessibility, and functionality, as well as allows other developers to replicate the same procedures accordingly.

    We have three types of user-defined functions.

    - *Scalar Function*:The user-defined scalar function returns a single value as a result of actions performed by the function. We return any datatype value from a function.

    - *Inline Table-Valued Function*:The user-defined inline table-valued function returns a table variable as a result of actions performed by the function. The value of the table variable should be derived from a single SELECT statement.

    - *Multi-Statement Table-Valued Function*: A user-defined multi-statement table-valued function returns a table variable as a result of actions performed by the function. In this, a table variable must be explicitly declared and defined whose value can be derived from multiple SQL statements.

    <br>
2. **System Defined Function**:

    These functions are defined by SQL Server for a different purposes. In other words, all the built-in functions supported by the SQL server are referred to as system defined functions.<br><br> Usage of the built-in functions saves much development time while performing certain tasks. These types of functions generally work with the SQL select statement to calculate the values and the manipulated data.

    We have two types of system defined functions in SQL Server

    - *Scalar Function*:Scalar functions operate on a single value and return a single value. Below is the list of some useful SQL Server Scalar functions
    - *Aggregate function*: Aggregate functions operate on a collection of values and return a single value. Below is the list of some useful SQL Server Aggregate functions
<Br><Br>
<hr>

<br><Br><Br>
   
 # **Numeric Functions:**
    
    -AVG():returns the average value of an expression
        Ex:SELECT AVG(Price) AS AveragePrice FROM Products;
    
    -COUNT(): returns the number of records returned by a select query
        Ex:SELECT COUNT(ProductID) FROM Products

    -MIN(): function returns the minimum value in a set of values
        Ex:SELECT MIN(Price) FROM Products
    
    -MAX(): function returns the maximun value in a set of values    
        Ex:SELECT MAX(Price) FROM Products

    -ABS():The ABS() function returns the absolute (positive) value of a number.
        Ex:SELECT ABS(-243.5);
            Output:243.5

    -ROUND():ROUND() function rounds a number to a specified number of decimal places
        Ex:SELECT ROUND(123.5672,2)
            Output:123.58

    -CEILLING():returns the smallest integer value that is bigger than or equal to a number
        EX: -SELECT CEILLING(25.75);
            OUTPUT:26
            -SELECT CEILLING(25.15);
            OUTPUT:26

    -FLOOR():returns the largest integer value that is smaller than or equal to a number
         EX: -SELECT FLOOR(25.75);
            OUTPUT:25
            -SELECT FLOOR(25.15);
            OUTPUT:25
    
    -SUM():used to find out the sum of a field in various records
        Ex:SELECT SUM(Cost) From Products;

    -SQRT():used to find out the square root of any number
        EX:SELECT productName, SQRT(Cost) FROM Products

    -RAND():can be used to produce random numbers between 0 and 1
        Syntax: RAND( )

    -POWER(): returns the value of a number raised to the power of another number
        Ex:SELECT POWER(4, 2);
        Output: 16

    -EXP():returns e raised to the power of the specified number
        Ex:SELECT EXP(2);
        Output:7.38905609893065

    -SIGN(): returns the sign of a number
        --If number > 0, it returns 1
        --If number = 0, it returns 0
        --If number < 0, it returns -1
    Ex:SELECT SIGN(255.5);
    Output:1

    -PI(): this function returns the pi value
        syntax: PI();

    -RADIANS():Convert Degree to Radians
        Ex:SELECT RADIANS(180)
        OUTPUT:3.141592653589793

    -DEGREES():Convert Radians to Degree
        Ex:SELECT DEGREES(3.141592653589793)
        OUTPUT:180

    -STDDEV():Returns the standard deviation of the numeric expression
        Ex:SELECT STD(PRICE) STD_DEVIATION FROM PRODUCTS
   
    -LN():returns natural log of number
        EX:SELECT LN(2);
        OUTPUT:0.6931471805599453

    -LOG(base,number):returns log of number to base specified.
        EX:SELECT LOG(2,5);
        OUTPUT:2.321928094887362

    -LOG10():returns the natural logarithm of a number to base 10.
        EX:SELECT LOG10(2);
        OUTPUT:0.3010299956639812

    -SIN(),COS(),TAN():These functions return the sine,cosine and tangent of a number respectively.
        EX:SELECT SIN(2);
        OUTPUT:0.9092974268256817

    -ASIN(),ACOS(),ATAN():These functions return the arc sine,arc cosine and arc tangent of a number respectively.
        --The specified number must be between -1 to 1 for ASIN AND ACOS, otherwise this function returns NULL.
        EX:SELECT ACOS(0.25);
        OUTPUT:1.318116071652818

   

    