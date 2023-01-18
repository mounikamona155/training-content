# [Delegates](https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/delegates/)
- Type safe function pointers which can encapsulate a method and call it.
- Since a delegate can encapsulate a method it must have similar definition as of a type.
- Delegates have the following properties:
    - Delegates are similar to C++ function pointers, but delegates are fully object-oriented, and unlike C++ pointers to member functions, delegates encapsulate both an object instance and a method.
    - Delegates allow methods to be passed as parameters.
    - Delegates can be used to define callback methods.
    - Delegates can be chained together; for example, multiple methods can be called on a single event
    - Delegate can be single cast or multicast
        - single cast means a delegate points to single method
        - Multicast means, delegate pointing to more than 1 method. The order of execution of methods would be as these methods were binded/subcribed/added to delegates. 
        - Delegates maintains an invocation list in case of multicast delegates.
        Delegates can be used to  create Anonymous methods. Short hand of anonynous methods is known as Lambda expression
    - Lambda expressions are a more concise way of writing inline code blocks. Lambda expressions (in certain contexts) are compiled to delegate types.
- Predefined Delegates inn C#: 
    - Action - return type void, no parameters , 
    - Func - any return type, no parameters, 
    - Predicate -  bool return type, and iput parameters
# [LINQ](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/linq/introduction-to-linq-queries)
* Language-Integrated Query
* It is a query language that is very similar to our SQL but we can use it in C# or VB
* So like any query langauge, it is incredibly useful for filtering/acquiring/aggregating data
* Very useful documentation click [here](https://www.tutorialsteacher.com/linq)
## [Query Expression](https://learn.microsoft.com/en-us/dotnet/csharp/linq/query-expression-basics)
- A query is a set of instructions that describes what data to retrieve from a given data source (or sources) and what shape and organization the returned data should have. 
- A query is distinct from the results that it produces.
- Query expressions can be used to query and to transform data from any LINQ-enabled data source. 
## Method syntax
* It is more like C# in that you use methods to perform the queries
* For simeple filtering, I would use method syntaxes
## Query syntax
* It is more like SQL in that you create a statement-like operation using keywords
* I would use joins with query syntax since it is easier to understand

# ADO.NET
* Another library (that already exists in our .NET 6 framework) that specializes in connecting to different types of databases/data sources to do CRUD operations on
    * CRUD - create/read/update/delete data on the database
* It provides helpful classes that handles the connection, execution, and reading of the data from a database
* We used System.Data.SqlClient external package to specify we are specifically connecting to a SQL Server database
    * This package will change if you change the engine of your database

## SqlConnection (Can also be named as just Connection)
* A class that is used to establish a connection to a Sql Server database
* You can think of the SqlConnection object as a representation of an existing connection to a database
* The very first step required to start messing with a database

## SqlCommand (Can also be named as just Command)
* A class that is used to execute SQL statements to a SQL Server database
* You can think of the SqlCommand object as a representation of the query statement you want to execute

## SqlDataReader (Can also be name as just DataReader)
* A class that is used to read what is exactly given to you when you execute a SQL statement
* Since C# only understands classes and objects while SQL only understands tables, this class is the middle man that will provide the conversion tools required to convert SQL datatypes to C# datatypes
* You still have to map things manually but at least you can grab the data and convert it into datatypes that C# understands

## SqlDataAdapter
* A class that we don't need to use but it is the actual class that stores information in a DataSet after grabbing information from a database
* Not only that, it can also perform some query statements to also update the database (It is like a 2 in 1 a combination between SqlDataReader and SqlCommand)
* Difference is it stores the info in a Dataset and follows the disconnect architecture type
* Essentially it is the translator that converts SQL table into C# object (which is the DataSet)
    * With added benefit of also performing some database operations as well
### DataSet
* This is the actual model that SqlDataAdapter uses to store a "table" in C#
* You can think of it as a representation of a in-memory table in SQL but in C#

# [Architecture of ADO.NET](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/ado-net-architecture)
* Ha! I scared you there for a second, no we don't need to know another architecture and how they structured and make ADO.net work
* Instead, we just need to know the two types of architecture and what's their difference
## Connected Architecture
* Your application has a constant connection to a database
    * At its core that is really all this means
* As a programmer, that means utilizing SqlConnection, SqlCommand, and (optional) SqlDataReader class so we are doing connected architecture
    * Remember .Open() method? Yeah that initiates a constant connection to the database
## [Disconnected Architecture](https://www.c-sharpcorner.com/UploadFile/8af593/ado-net-dis-connected-architecture/)
* Your application only establishes a connection if it needs something with the database
* As a programmer, you need to utilize SqlDataAdapter class instead 
    * It still needs SqlConnection class to dictate what database you are trying to do operations on
        * However, you don't need to use .Open() method
    * Feel free to look up what that code looks like but we don't need to apply it
## Garbage collection
- [What is managed code](https://learn.microsoft.com/en-us/dotnet/standard/managed-code)
- [Automatic memory management](https://learn.microsoft.com/en-us/dotnet/standard/automatic-memory-management)
- [Fundamentals of Garbage collection](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/fundamentals)
- [Cleaning of unmanaged resources](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/unmanaged)
- [Dispose objects which uses IDiposable](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/using-objects)
- [IDisposable exercises](https://dotnetcademy.net/Learn/2050/Pages/13)

## [Generics](https://learn.microsoft.com/en-us/dotnet/standard/generics/)
# Advance Topics
# Extra topics
## [What is a fullstack developer](https://www.w3schools.com/whatis/whatis_fullstack.asp)
* A full-stack developer helps build and maintain both the front-end and the back-end of a website.
* The front end (the parts of a website a user sees and interacts with) and the back end (the behind-the-scenes data storage and processing) require different skill sets.
* Since full-stack developers are involved with all aspects of the development process, they must have expertise in both.
### What does a full-stack developer do?
* Full-stack developers design and create websites and applications for various platforms. 
* A full-stack developer’s job description might include the following:
    * Develop and maintain web services and interfaces
    * Contribute to front-end and back-end development processes
    * Build new product features or APIs
    * Perform tests, troubleshoot software, and fix bugs
    * Collaborate with other departments on projects and sprints

## [SOLID Principles](https://medium.com/backticks-tildes/the-s-o-l-i-d-principles-in-pictures-b34ce2f1e898)
- SOLID is an acronym for the first five object-oriented design (OOD) principles by Robert C. Martin
- These principles establish practices that lend to developing software with considerations for maintaining and extending as the project grows.
- Adopting these practices can also contribute to avoiding code smells, refactoring code, and Agile or Adaptive software development.
- Projects that adhere to SOLID principles can be shared with collaborators, extended, modified, tested, and refactored with fewer complications.
- SOLID stands for:
  - S - Single-responsiblity Principle
  - O - Open-closed Principle
  - L - Liskov Substitution Principle
  - I - Interface Segregation Principle
  - D - Dependency Inversion Principle
- Single-responsibility Principle (SRP) states:
    - A class should have one and only one reason to change, meaning that a class should have only one job.
    - If a Class has many responsibilities, it increases the possibility of bugs because making changes to one of its responsibilities, could affect the other ones without you knowing.
    - This principle aims to separate behaviours so that if bugs arise as a result of your change, it won’t affect other unrelated behaviours.
- Open-closed Principle (OCP) states:
  - Objects or entities should be open for extension but closed for modification.
  - Changing the current behaviour of a Class will affect all the systems using that Class.
  - If you want the Class to perform more functions, the ideal approach is to add to the functions that already exist NOT change them.
  - This principle aims to extend a Class’s behaviour without changing the existing behaviour of that Class. This is to avoid causing bugs wherever the Class is being used.
- Liskov Substitution Principle states:
  - Let q(x) be a property provable about objects of x of type T. Then q(y) should be provable for objects y of type S where S is a subtype of T.
  - If S is a subtype of T, then objects of type T in a program may be replaced with objects of type S without altering any of the desirable properties of that program.
  - This means that every subclass or derived class should be substitutable for their base or parent class.
  - When a child Class cannot perform the same actions as its parent Class, this can cause bugs.
  - If you have a Class and create another Class from it, it becomes a parent and the new Class becomes a child. 
  - The child Class should be able to do everything the parent Class can do. This process is called Inheritance.
  - The child Class should be able to process the same requests and deliver the same result as the parent Class or it could deliver a result that is of the same type.
  - Ex - the parent Class delivers Coffee(it could be any type of coffee). It is acceptable for the child Class to deliver Cappucino because it is a specific type of Coffee, but it is NOT acceptable to deliver Water.If the child Class doesn’t meet these requirements, it means the child Class is changed completely and violates this principle.
  - This principle aims to enforce consistency so that the parent Class or its child Class can be used in the same way without any errors.
- Interface segregation principle states:
  - A client should never be forced to implement an interface that it doesn’t use, or clients shouldn’t be forced to depend on methods they do not use.
  - When a Class is required to perform actions that are not useful, it is wasteful and may produce unexpected bugs if the Class does not have the ability to perform those actions.
  - A Class should perform only actions that are needed to fulfil its role. Any other action should be removed completely or moved somewhere else if it might be used by another Class in the future.
  - This principle aims at splitting a set of actions into smaller sets so that a Class executes ONLY the set of actions it requires.
- Dependency inversion principle states:
  - Entities must depend on abstractions, not on concretions. It states that the high-level module must not depend on the low-level module, both  should depend on abstractions.
  - In other words, abstractions should not depend on details. Details should depend on abstractions.
  - This principle allows for decoupling.
  - High-level Module(or Class): Class that executes an action with a tool.
  - Low-level Module (or Class): The tool that is needed to execute the action
  - Abstraction: Represents an interface that connects the two Classes.
  - Details: How the tool works
  - This principle says a Class should not be fused with the tool it uses to execute an action. Rather, it should be fused to the interface that will allow the tool to connect to the Class.
  - It also says that both the Class and the interface should not know how the tool works. However, the tool needs to meet the specification of the interface.
  - This principle aims at reducing the dependency of a high-level Class on the low-level Class by introducing an interface.
## [Design Patterns](https://sourcemaking.com/design_patterns)
- Design patterns are reusable solutions to the problems that we encounter in the day to day programming. They are generally targeted at solving the problems of object generation and integration. 
- In other words, Design patterns acts as templates which can be applied to the real-world programming problems.
- **History and evolution of design Patterns**
  - The four authors of the book famously know as Gang of four are the ones who brought the concepts of design patterns in their book “Elements of reusable Object-Oriented software” . 
  - Gang of Four has divided the book into two parts with first part explaining about the pros and cons of object oriented programming and the second part describes the evolution of 23 classic software design patterns.
- **Types of Design Patterns**
    - Gang of Four have categorised the design patterns in to 3 types based on different problems encountered in the real world applications. They are **Creational, Structural** and **Behavioural**. 
      - **Creational design patterns**: These patterns deal with object creation and initialization. Creational pattern gives the program more flexibility in deciding which objects need to be created for a given case.
        - Examples of Creational design patterns category : Singleton , Factory and Abstract Factory etc.
      - **Structural design patterns** : This pattern deals with class and object composition. In simple words, This pattern focuses on decoupling interface, implementation of classes and its objects. 
        - Examples of Structural design patterns category : Adapter,  Facade and Bridge etc.
      - **Behavioural design patterns** : These patterns deal with communication between Classes and objects.
        - Examples of Behavioural design patterns : Chain of Responsibility, Command and Interpreter etc.
 ## [Singleton](https://csharpindepth.com/articles/singleton)
 - Singleton Pattern belongs to Creational type pattern which means creational pattern explain us the creation of objects in a manner suitable to a given situation.
 - Singleton design pattern is used when we need to ensure that only one object of a particular class is Instantiated. 
 - That single instance created is responsible to coordinate actions across the application.
 - Why Singleton: Concurrent access to the resource is well managed by singleton design pattern.
 - As part of the Implementation guidelines we need to ensure that only one instance of the class exists by declaring all constructors of the class to be private.  Also, to control the singleton access we need to provide a static property that returns a single instance of the object.

### Real world examples of Singleton : 
- Exception/Information logging
- Connection pool management 
- File management
- Device management such as printer spooling
- Application Configuration management
- Cache management
- And Session based shopping cart are some of the real world usage of singleton design pattern
### Static classes vs Singleton
- Static is a keyword and Singleton is a design pattern
- Static classes can contain only static members
- Singleton is an object creational pattern with one instance of the class
- Singleton can implement interfaces, inherit from other classes and it aligns with the OOPS concepts
- Singleton object can be passed as a reference
- Singleton supports object disposal
- Singleton object is stored on heap
- Singleton objects can be cloned
# References
- [If you want to have an easy start to Linq reading](https://www.tutorialsteacher.com/linq)
- [Ado.Net Overview](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/ado-net-overview)
- [Ado.Net Architecture](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/ado-net-architecture)
- [Datatype mappings](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql-server-data-type-mappings)
- [Reading using DataReader](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/retrieving-data-using-a-datareader)
- [DataAdapters vs DataReaders](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/dataadapters-and-datareaders)
- [ADO.Net best practises](https://www.codemag.com/Article/2207021/Simplifying-ADO.NET-Code-in-.NET-6-Part-1)
