# Isolation levels
## Why isolation levels used?
``` text
 > Isolation is the separation of resource or data modifications made by different transactions.
 > Isolation levels are described for which concurrency side effects are allowed, such as dirty reads or phantom reads
```
## what is isolation level?
```
> Isolation levels define the degree to which a transaction must be isolated from the data modifications made by any other transaction in the database system. 
```

## Isolation level is defined by 
* **Dirty read**
  ```
    - A Dirty read is a situation when a transaction reads data that has not yet been committed.
    - For example, Let’s say transaction 1 updates a row and
    leaves it uncommitted, meanwhile, Transaction 2 reads the updated row.
    - If transaction 1 rolls back the change, transaction 2 will have read data that is considered never to have existed
    ```
```
> SELECT * FROM amplifier
> BEGIN TRANSACTION
> SELECT * FROM amplifier 
> update amplifier set stock= 15
> where id =1

> SET TRANSACTION ISOLATION level read UNCOMMITTED
> SELECT * FROM amplifier

WAITFOR delay '00:00:10' 
```
* **Non repeatable read**
  ```
     - Non Repeatable read occurs when a transaction reads the same row twice and gets a different value each time.
     - For example, suppose transaction T1 reads data. Due to concurrency, another transaction T2 updates the same data and commit,
     - Now if transaction T1 rereads the same data, it will retrieve a different value.
     ```
```
> SET TRANSACTION ISOLATION LEVEL REPEATABLE READ 
> BEGIN TRANSACTION
> SELECT *from infostudents 
> WAITFOR delay '00:00:10'
> select *from infostudents 
> COMMIT TRANSACTION

-- transaction 1

> UPDATE infostudents set  studentname  ='rajL'
> where id=101
```
* **Phantom Read**
  ```
   - Phantom Read occurs when two same queries are executed, but the rows retrieved by the two, are different.
   - For example, suppose transaction T1 retrieves a set of rows that satisfy some search criteria.
   - Now, Transaction T2 generates some new rows that match the search criteria for transaction T1. 
   - If transaction T1 re-executes the statement that reads the rows, it gets a different set of rows this time.
   ```

## Isolation level
* **Read Uncommitted** 
  ```
  - Transactions are not isolated from each other. If the DBMS supports other transaction isolation levels, it ignores whatever mechanism it uses to implement those levels. 
  - So that they do not adversely affect other transactions, transactions running at the Read Uncommitted level are usually read-only.
  ```
* **Readcommited** 
   ```
  - The transaction holds a read lock (if it only reads the row) or write lock (if it updates or deletes the row) on the current row to prevent other transactions from updating or deleting it.
  - The transaction releases read locks when it moves off the current row.
  - It holds write locks until it is committed or rolled back.
  ```
* **Repeatable Read** 
  ```
    - The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    - The transaction holds read locks on all rows it returns to the application and write locks on all rows it inserts, updates, or deletes. 
    - For example, if the transaction includes the SQL statement
    - SELECT * FROM Orders
    - the transaction read-locks rows as the application fetches them.
    - If the transaction includes the SQL statement
    - DELETE FROM Orders WHERE Status = 'CLOSED', the transaction
    - write-locks row as it delete them,Because other transactions cannot update or delete these rows, the current transaction avoids any nonrepeatable reads. 
    - The transaction releases its locks when it is committed or rolled back


* **Serializable**  
  ```
  - The transaction holds a read lock (if it only reads rows) or write lock (if it can update or delete rows) on the range of rows it affects.
  - For example, if the transaction includes the SQL statement 
  - SELECT * FROM Orders, the range is the entire Orders table;
  - the transaction read-locks the table and does not allow any new rows to be inserted into it. 
  - If the transaction includes the SQL statement - DELETE FROM Orders WHERE Status = 'CLOSED', 
  - the range is all rows with a Status of "CLOSED"; the transaction write-locks all rows in the Orders table with a Status of "CLOSED"
  - and does not allow any rows to be inserted or updated such that the resulting row has a Status of "CLOSED"
  ```
```
- Because other transactions cannot update or delete the rows in the range, the current transaction avoids any nonrepeatable reads. 
- Because other transactions cannot insert any rows in the range, the current transaction avoids any phantoms. 
- The transaction releases its lock when it is committed or rolled back.
```
![Isolation level](https://media.geeksforgeeks.org/wp-content/cdn-uploads/transactnLevel.png)


---
---