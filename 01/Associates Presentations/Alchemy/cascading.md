# Cascading in SQL

## Why cascading is used?
  - If you want to simultaneously delete or update an entry from both the parent table and child table, how could you do that? which keyword is used for carrying out this operation?
  - so to carry out this operation CASCADE keyword is used.

## What is cascading?
  - CASCADE is a keyword in sql relational database management system.
  - Cascading in sql is used to simultaneouly delete or update an entry from both the child and parent table.
  - The keyword CASCADE is used as a conjunction(two or more events occuring at the same time) while carrying the query of ON DELETE or ON UPDATE.

## How cascading works?
  - If the CASCADE keyword is added to a query written for the parent table, then both the parent and child tables change accordingly on execution of the query.
  - In this presentation we will see how we can use cascade while using the following queries:
    - ON DELETE query
    - ON UPDATE query
  - And, later you will see a demo on how to implement the code and run the above two quries.
  
  ## Example
  ### T1 - (table 1) 
  - Data of all the students in the class.
  - In T1 there are 4 columns that is enrollment number (int), name (varchar), email (varchar), state (varchar).

  | enrollment number | name | email | state |
  | :---: | :---: | :---: | :---: |
  | 1 | manoj | manoj@testmail.com | karnataka |
  | 2 | solu | solu@testmail.com | ap |
  | 3 | bhargav | bhargav@testmail.com | karnataka |

  ### T2 - (table 2) 
  - Marks of all the students scored in mathematics subject.
  - In T2 there are 3 columns that is enrollment number (int), name (varchar), marks (int).

  | enrollment number | name | marks | 
  | :---: | :---: | :---: |
  | 1 | manoj | 89 |
  | 2 | solu | 95 |
  | 3 | bhargav | 98 |

  ### T3 - (table 3) 
  - Marks of all the students scored in science subject.
  - In T3 there are 3 columns that is enrollment number (int), name (varchar), marks (int).

  | enrollment number | name | marks | 
  | :---: | :---: | :---: |
  | 1 | manoj | 79 |
  | 2 | solu | 85 |
  | 3 | bhargav | 90 |

  - Query to create Class Table:
  ```sql
  CREATE TABLE [Class](
  [EnrollmentId] INT,
  [Name] VARCHAR(25),
  [Email] VARCHAR(25),
  [State] VARCHAR(25),
  CONSTRAINT [PK_EnrollmentId] PRIMARY KEY(EnrollmentId),
  );
  ```
  - Query to create Mathematics Marks Table:
  ```sql
  CREATE TABLE [Mathematics](
  [EnrollmentId] INT,
  [Name] VARCHAR(25),
  [Marks] INT,
  PRIMARY KEY(EnrollmentId, [Name]),
  FOREIGN KEY(EnrollmentId) REFERENCES Class(EnrollmentId) ON DELETE CASCADE ON UPDATE CASCADE
  );
  ```
  - Query to create Science Marks Table:
  ```sql
  CREATE TABLE [Science](
  [EnrollmentId] INT,
  [Name] VARCHAR(25),
  [Marks] INT,
  PRIMARY KEY(EnrollmentId, [Name]),
  FOREIGN KEY(EnrollmentId) REFERENCES Class(EnrollmentId) ON DELETE CASCADE ON UPDATE CASCADE
  );
  ```
  - Inserting some data into the Class table:
  ```sql
  INSERT INTO Class ([EnrollmentId],[Name], [Email], [State]) VALUES
  (1, 'Manoj', 'manoj@testmail.com', 'Karnataka'),
  (2, 'Solu', 'solu@testmail.com', 'Andhra pradesh'),
  (3, 'Bhargav', 'bhargav@testmail.com', 'Karnataka');
  ```
  - Inserting some data into the Mathematics table:
  ```sql
  INSERT INTO Mathematics ([EnrollmentId], [Name], [Marks]) VALUES
  (1, 'Manoj', 78),
  (2, 'solu', 85),
  (3, 'Bhargav', 90);
  ```
  - Inserting some data into the Science table:
  ```sql
  INSERT INTO Science ([EnrollmentId], [Name], [Marks]) VALUES
  (1, 'Manoj', 68),
  (2, 'solu', 80),
  (3, 'Bhargav', 95);
  ```

  - Query to view the all the data of the Class, Mathematics and Science tables:
  ```sql
  SELECT * FROM Class
  SELECT * FROM Mathematics
  SELECT * FROM Science 
  ```
  - Results:
  ### Class table
  | EnrollmentId | Name | Email | State |
  | :---: | :---: | :---: | :---: |
  | 1 |Manoj | manoj@testmail.com | Karnataka |
  | 2 | Solu | solu@testmail.com | Andhra pradesh |
  | 3 | Bhargav | bhargav@testmail.com | Karnataka |

  ### Mathematics table
  | EnrollmentId | Name | Marks | 
  | :---: | :---: | :---: |
  | 1 | Manoj | 78 |
  | 2 | Solu | 85 |
  | 3 | Bhargav | 90 |

  ### Science table
  | EnrollmentId | Name | Marks | 
  | :---: | :---: | :---: |
  | 1 | Manoj | 68 |
  | 2 | Solu | 80 |
  | 3 | Bhargav | 95 |

  ## Test cases
  - Case 1: If a student wants to change his class, he must delete his name from all the tables, i.e., T1, T2, and T3. As the student will be shifted to another class, so his information needs to be deleted.
  - Case 2: If a student wants to change his enrollment number, he has to update all three tables, i.e., T1, T2, and T3.

  - ON DELETE CASCADE:
  ```sql
  DELETE FROM Class WHERE EnrollmentId = 2;
  ```
  - ON UPDATE CASCADE:
  ```sql
  UPDATE Class SET [EnrollmentId] = 5 WHERE [EnrollmentId] = 1;
  ```

  - Results after running these two queries:

  ### Class table
  | EnrollmentId | Name | Email | State |
  | :---: | :---: | :---: | :---: |
  | 3 | Bhargav | bhargav@testmail.com | Karnataka |
  | 5 |Manoj | manoj@testmail.com | Karnataka |

  ### Mathematics table
  | EnrollmentId | Name | Marks | 
  | :---: | :---: | :---: |
  | 3 | Bhargav | 90 |
  | 5 | Manoj | 78 |

  ### Science table
  | EnrollmentId | Name | Marks | 
  | :---: | :---: | :---: |
  | 3 | Bhargav | 95 |
  | 5 | Manoj | 68 |

  ## Manual way vs cascade
  - if had to perform the above test cases using the common way then we need to do it seperatly in all the 3 tables.
  - so to overcome this issue CASCADE is used as a conjunction while carrying out ON DELETE or ON UPDATE query.
  - using CASCADE keyword we can perform update/delete query in all the 3 tables (T1, T2, T3) simultaneously.
  - by using CASCADE the same operation is done in a more efficient way.

  ## INSERT CASCADE in sql using triggers
  - First, we will create two tables, i.e. item and stock. The first table item will be the parent table, and the second table stock will be the child table. Whenever we make an entry in the item table, the stock table gets updated automatically by entering new data.
  
  - Query to create Item Table:
    - Here, the item table has three columns, i.e., Id (Primary Key), Name, and the product's price.
  ```sql  
  CREATE TABLE item(
  id INT NOT null IDENTITY(1,1),
  Name VARCHAR(20) NOT NULL,
  Price INT NOT NULL,
  PRIMARY KEY(id));
  ```
  
  - Query to create Stocks Table:
    - The stock table has two columns, i.e., Id(Primary Key, Foreign Key reference from Id of item table), and Quantity.
  ```sql
  CREATE TABLE stock(
  Id INT NOT NULL,
  Quantity INT NOT NULL,
  PRIMARY KEY(Id),
  FOREIGN KEY(Id) REFERENCES item(Id) ON DELETE CASCADE ON UPDATE CASCADE);
  ```

  - Now, whenever a new product is launched, we need to insert the product name into the item table and set that item's quantity to zero in the stocks table. Manually this can be done by executing two queries, but using the ON INSERT CASCADE technique, this can be done within a single query.
  - we make use of Triggers to so.
  - Triggers - A SQL trigger is a database object which fires when an event occurs in a database. For example, a trigger can be set on a record insert in a database table.

  - Implementing ON INSERT CASCADE:
  ```sql
  DELIMITER $$
  CREATE TRIGGER il AFTER INSERT ON item FOR EACH ROW
  BEGIN
  INSERT INTO stock(Id, Quantity) VALUES (NEW.Id, 0); 
  END$$
  DELIMITER;
  ```
  - Inserting Data
    - Inserting new product in the item table.
      ```sql
      INSERT INTO item VALUES(1, 'Biscuit', 100);
      ```
  - Now, we will display both tables. Displaying item table.
  
  | Id | Name | Price | 
  | :---: | :---: | :---: |
  | 1 | Biscuit | 100 |

  - Displaying stocks table.

  | Id | Quantity | 
  | :---: | :---: |
  | 1 | 0 |

  - A single insert query is used to add data to both tables.

  ## Conclusion 
    1. CASCADE in SQL helps to update/delete the entry from the parent and child table simultaneously.
    2. ON UPDATE CASCADE and ON DELETE CASCADE is written while creating the child table.
    3. CASCADE helps in reducing the human effort in updating or deleting an entry from the database.



  
  

