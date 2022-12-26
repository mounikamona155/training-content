# TRANSACTIONS
## What is transaction?
*   ``` Transactions group a set of tasks into a single execution unit.
        Each transaction begins with a specific task and ends when all the tasks in the group successfully complete.
        If any of the tasks fail, the transaction fails.
    ```

## why we need transactions?
* SQL transactions gives you the power to return back to a safe state if
some error happens in the middle of your SQL code.
## how transactions are managed in SQL?
* A transaction is a set of T-SQL statements that are executed together as a
unit like as a single T-SQL statement. 
* If all of these T-SQL statements
executed successfully, then a transaction is committed and the changes
made by T-SQL statements permanently saved to database.
## three steps of transactions
* The first step is to check the availability of the requested amount in the
account.
* The second step deducts the amount from the account if the amount is
available and then updates the account balance.
* The third step is to write the money withdrawing operation in the log file.
This step writes about the transaction is either successful or failed.
* If successful, write the data modification in the database. Otherwise, the
transaction will be rolled back into its previous state.

## Transaction modes in SQL:
* **Auto-commit Transaction Mode** **:**
  ``` 
   - It is the SQL Server's default transaction mode.
   - It will evaluate each SQL statement as a transaction, and
    the results are committed or rolled back accordingly.
   - Thus the successful
    statements are immediately committed, while the failed statements are
    immediately rolled back.
  ```
* **Implicit Transaction Mode** **:** 
    ``` 
    This mode allows SQL Server to begin the implicit transaction for each DML statement,
    but it explicitly requires the use of commit or rollback commands at the end of the statements.
    ```
* **Explicit Transaction Mode** **:**  
  ```
   This mode is defined by the user that allows us to identify a transaction's beginning and ending points exactly.
   It will automatically abort in case of a fatal error.
  ```
## Transaction Control **:**

The following commands are used to control transactions.
* COMMIT − to save the changes.
* ROLLBACK − to roll back the changes.
* SAVEPOINT − creates points within the groups of transactions in which to ROLLBACK.
* SET TRANSACTION − Places a name on a transaction.
  
## How to implement Transactions using SQL?
### Transaction process :
![trans](https://static.javatpoint.com/sqlserver/images/sql-server-transaction1.png)

## TCL_Commands_EXAMPLES
``` CREATE DATABASE Person;  
CREATE TABLE Person(  
    [PersonID] int,  
    [Name] varchar(255),  
    [City] varchar(255)  
);  
SELECT * FROM Person  
  
INSERT INTO Person (PersonID,Name,City) VALUES (101,'Anbu','Chidambaram');  
INSERT INTO Person (PersonID,Name,City) VALUES (102,'Yuga','Chennai');  
SELECT * FROM Person  
```
### COMMIT  
```
BEGIN TRANSACTION  
INSERT INTO Person (PersonID,Name,City) VALUES (103,'prasanna','Tambaram');  
COMMIT TRANSACTION;  
SELECT * FROM Person

```
  
### SAVEPOINT  
```
BEGIN TRANSACTION  
UPDATE Person SET Name='Rezwan' WHERE PersonID=103;  
SAVE TRANSACTION A;  
SELECT * FROM Person  
  
BEGIN TRANSACTION  
INSERT INTO Person (PersonID,Name,City) VALUES (104,'prasanna','Velacheri');  
SAVE TRANSACTION B;  
SELECT * FROM Person  
  
```

### ROLLBACK  
```
ROLLBACK TRANSACTION A;  
SELECT * FROM Person  
  
--ROLLBACK to COMMIT  
ROLLBACK TRANSACTION;  
SELECT * FROM Person  
  
-- DELETE THE VALUES INSIDE THE TABLE  

DELETE FROM Person  
  
-- DROP THE OVERALL TABLE  
DROP TABLE Person  

```
### SET TRANSACTION
* syntax:
   ```
   SET TRANSACTION [ READ WRITE | READ ONLY ];
   ```
---
---