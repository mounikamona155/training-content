# [SQL](https://www.tutorialspoint.com/sql/sql-overview.htm)
- Structured Query Language
- Used to store, manupulate, retrieve/fetch data from RBDMS
- Sql is a standard query language dfor RDBMS. Eg of RBDMS - mySql, PostGres, Excel, MS Access (JET Sql), Oracle (PL/Sql), Sybase, **Sql Server** (tSql)

## Sql Commands
### DDL
- handle database objects (database, tables, stored procedures, functions, schemas)
- Create, alter, drop, truncate
### DML
- retrieve and manipulate records
- Select, Insert, Update, Delete
## DCL
- used for access controls
- Grant, Revoke
## TCL 
- used for transactions
- Commit, savepoint, rollback

# [RDBMS](https://www.tutorialspoint.com/sql/sql-rdbms-concepts.htm)
- relational Database Management Systems
- based on a mathematical relation model

## Tables
- Database object which stores data in the form of rows and columns
- Record or rows are the part of the group of related values.
- Columns hold the collection of similar type of fields. Like restaurant name is a column.
- Field the fundamental or smallest unit in the table is a field which can have a value or null.
- null value means no value or left blank. Empty space is not a null value

| Restaurant Name | Location | Reviews |
|-----------------|----------|---------|
| McDonalds       | Delhi    | 4       |
| Mod's           |Virginia  | 4.2     |


## [Datatypes in Sql](https://www.tutorialspoint.com/sql/sql-data-types.htm)
- Numeric - int, bigint, smallint, bit, decimal, numeric, money, smallmoney, approximate numerics (float, real)
- Date and time - datetime, smalldatetime, date, time
- Non-Unicode Character strings - fixed-length (char), variable length (varchar, varchar(max), text)
    - char - 8000 characters
- Unicode Character Strings - fixed length (nchar), variable lengths (nvarchar, nvarchar(max), ntext)
    - nachar - 4000 character
- Binary
- mMiscellaneous - uniqueidentifier (guid), xml, timestamp

## Sql Constraints
- Rules which are enforced on columns of a table
1. Not Null - ensures that column must have a value and it cannot have null
2. Default - Provides a default value for a column when none is entered
3. Unique - ensures all the values in the columns are uniqiue
4. Primary - ensures all records in a table are unique
5. Foreign - for referencing to a child table
6. [Check](http://www.sql-server-helper.com/tips/tip-of-the-day.aspx?tkey=c6021c06-8631-4996-9e8d-2bc632dfebf0&tkw=using-check-constraints-to-validate-data) - ensures all the values in a column satisfies the condition 
    - `Age int check (age>17),`

## References 
- Please choose your path and go through successive trailing links
- [Reading](https://www.tutorialspoint.com/sql/index.htm)
- [Videos](https://www.youtube.com/playlist?list=PL08903FB7ACA1C2FB) - ignore installtion and start with video 3