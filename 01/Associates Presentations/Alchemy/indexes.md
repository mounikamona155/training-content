## DEFINITION ##
    -> Used to find data from tables quickly
    -> Their existence can drastically improve the performance of the query.
    -> In their absence, table scan is performed by query engine, which is bad for performance.

## EXAMPLE ##

    | ID | NAME    | SALARY     | GENDER  |
    | 1  |  SAM    |  2500      |  F      |  
    | 2  |  RAM    |  3000      |  M      |  
    | 3  | SHAM    |  6000      |  M      |  
    | 4  |  SARA   |  4500      |  F      |  

-> Normal search => " Select * from tableEmployee where Salary > 4000 and Salary < 7000 " 
  # If table is large, each and every row is searched and the performance is negatively impacted.

-> Using Index Search => " CREATE INDEX IX_tableEmployee_Salary ON tableEmployee (Salary ASC) "
        ( CREATE INDEX index_name ON tablename (column ASC/DESC) ).

-> Select using Index => " SELECT * FROM Table WITH(INDEX(Index_Name))"

        

## INDEX TYPES 
    - Clustered
    - Nonclustered
    - Unique
    - Filtered
    - XML
    - Full Text
    and so on..

1) Clustered Index : 

    -> It determines the physical order of the data in a table.
    -> A table can have only 1 clustered index.
    -> Primary key create clustered indexes automatically if no clustered index already exists on table.

    Eg: If Id in a table is the clustered index, no matter which order the id's are inserted, 
        they are arranged in sequential order.
## COMMAND -> "CREATE CLUSTERED INDEX INDEX_NAME ON TABLE_NAME(COLUMN)"
    -> If two or more columns given, it is called 'composite clustered index'
## COMMAND -> "CREATE CLUSTERED INDEX INDEX_NAME ON TABLE_NAME(COLUMN1, COLUMN2, ...)"

2) NONCLUSTERED INDEX : 
    -> Data is stored in one place, index in another place. Index will have pointers to the storage location of the data.
    -> There can be many nonClustered indexes in a table.
## COMMAND -> CREATE NONCLUSTERED INDEX INDEX_NAME ON TABLE_NAME;

3) Single column indexes : 
    -> A single column index is created based only on one table column.

## COMMAND -> CREATE INDEX idx_lastname ON Persons (LastName);


4) Composite column indexes
    -> A composite index contains a common index for one or more columns.

## COMMAND -> CREATE INDEX idx_lastname ON Persons (FirstName,LastName);

5) Unique column indexes
    -> Unique indexes are used not only for performance, but also for data integrity. A unique index does not   allow any duplicate values to be inserted into the table.

## COMMAND -> CREATE UNIQUE INDEX idx_lastname ON Persons (FirstName,LastName);


6) Column store indexes
    -> 	Columnstore index is a new type of index introduced in SQL Server 2012. It is a column-based non-clustered index geared toward increasing query performance for workloads that involve large amounts of data, typically found in data warehouse fact tables. This new type of index stores data column-wise instead of row-wise, as indexes currently do. Columnstore indexes are the standard for storing and querying large data warehousing fact tables. This index uses column-based data storage and query processing to achieve gains up to 10 times the query performance in your data warehouse over traditional row-oriented storage.
	

## COMMAND -> CREATE NONCLUSTERED COLUMNSTORE INDEX idx_lastname ON Persons (FirstName,LastName);

