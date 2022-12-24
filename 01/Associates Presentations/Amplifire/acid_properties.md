#          ACID
## why we need ACID properties?
```
1. To maintain the integrity of the data.
2. There are four properties described in the batabase manage which are known as the ACID properties. 
```
## types:

![types](https://static.javatpoint.com/dbms/images/acid-properties-in-dbms.png)

## Atomicity


* ```The term atomicity defines that the data remains atomic.```

*  It means if any operation is performed on the data, 
either it should be  executed completely or should not be executed at all.

* It involves the following two operations. 
* -Abort:If a transaction aborts, changes made to the database are not visible.
* -commit: If a transaction commits, changes made are visible. 

***not an atomic transcation***

![nat](https://static.javatpoint.com/dbms/images/acid-properties-in-dbms2.png)
***atomic transcation***
![at](https://static.javatpoint.com/dbms/images/acid-properties-in-dbms3.png)

## Consistency:
* ``` The word 'consistency' means that the value should remain preserved always```
* Data is in a consistent state when a transaction starts and when it ends are Equal.
* For example, in an application that transfers funds from one account to another,
* the consistency property ensures that the total value of funds in both the accounts is the same at the start and end of each transaction.

![data consistent](https://media.geeksforgeeks.org/wp-content/uploads/11-6.jpg)

## Isolation:
* ```the term *isolation* means seperation.```
* This property ensures that multiple transactions can occur concurrently without leading to the inconsistency of the database state.
* Changes occuring in one transaction will not be visible to other transaction until it is committed.

![isolation](https://media.geeksforgeeks.org/wp-content/uploads/20210402015259/isolation-300x137.jpg)

## Durability
* ```it ensures the 'permanency' of something.```
* ensures that once the transaction is successfully completed, then the changes it made to the database will be permanent.
* Even if there is a system failure or power failure or any abnormal changes, it should safeguard the committed data.
---
---
