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

# References
- [If you want to have an easy start to Linq reading](https://www.tutorialsteacher.com/linq)