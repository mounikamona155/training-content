# More CSharp topics week 3
# Regular Expressions
- A regular expression is a special sequence of characters that describe a pattern of text that should be found, or matched, in a string or document. 
- By matching text, we can identify how often and where certain pieces of text occur, as well as have the opportunity to replace or update these pieces of text if needed.
- Where do you need regukar expressions?
    - Validating user's input in a form
    - verify and parse any text files, code, application.
    - examie test results
    - finding keyword in the web pages, emails.

## Character Sets -[]
- practise or practice, consencous or concesous
    - practi[sc]e - match with practise and practice
    - con[sc]en[sc]ous - will match with consencous or concesous
## Literals - exact match 
- `3.14 will` match exactly with `3.14`
- `chennai has best dosas` will match exactly with `chennai has best dosas` 

## Alternation |
- allowing for the matching between 2 sub expression
    - `I love Chennai|Madras`

## Ranges -
- [A-Z] - match any uppercase letter
- [a-z] - match any lowercase letter
- [0-9] - matches any digit
- [a-zA-Z0-9 ] - matches any lowercase, uppercase letter or any digit.
## Short hand character classes 
- \w - [A-Za-z0-9]
- \d - [0-9]
- \W - not [A-Za-z0=9] or [^A-Za-z0-9]
- \D - not [0-9] or [^0-9]
- \s - single space
- \t - tab
- \r - carriage return
- \n - newline
- ? - optional
- ^ - not - [^A] ,means not A
- ^ - string beginning  - ^I love Chennai
- $ - String end  - I love Chennai$
    - ^I love Chennai$

## Wild card characters .
- . represents matching with a single character(letter, number, symbol, whitespace)
- ... -> matches Joe, Jon, Ron
- Eg `...athan' -> Jonathan, Ronathan,   Nathan etc...

## Kleen Star(*), Kleen Plus (+)
- * - means 0 or more charcates : Eg - h*t -> ht, hot, hoot, hooot
- + - means 1 or more characters : Eg h+t -> hot, hoot, hooot

## Grouping ()
- `I love (Chennai|Madras|Bombay|Mumbai)`

## Quantifiers {}
- PAN Card - 5 letters, 4 digits, 1 letter
    - [A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z] - is ineffective
    - [A-Z]{5}[0-9]{4}[A-Z]
- Aadhar number - \d{4}\s\d{4}\s\d{4}
- DOB - dd/MMM/yyyy
    - `^(([0-9])|([0-2][0-9])|([3][0-1]))\ (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\ \d{4}$`
- Email - `\w+@\w+\.\w{2,4}\.?\w{0,2}`


# File Handling
- [Basics of File I/O](https://learn.microsoft.com/en-us/troubleshoot/developer/visualstudio/csharp/language-compilers/file-io-operation)
- **System.IO** namespace provides four classes that allow you to manipulate individual files, as well as interact with a machine directory structure.
- The **Directory** and **File** directly extends System.Object and supports the creation, copying, moving and deletion of files using various static methods.
    -  They only contain static methods and are never instantiated.
- The **FileInfo** and **DirectoryInfo** types are derived from the abstract class **FileSystemInfo** type and they are typically, employed for obtaining the full details of a file or directory because their members tend to return strongly typed objects.
    - They implement roughly the same public methods as a Directory and a File but they are stateful and the members of these classes are not static.
# Exceptions
- An exception is an event that occurs during the execution of a program that distrupts the normal flow of instructions
    - Horrible to encounter when presenting your program (When it is expected to work perfectly fine)
    - Great when trying to find bugs in your program
- They are not Errors!
#### Errors
- A serious problem that for the most part cannot be handled by the developer
    -They are fatal to the program at runtime
    - Ex: A stack overflow error and that usually occurs when your computer has run out of memory to store information
- 3 types of errors
    - Usage error - error in your program logic and can be solve by modifying/restructuring your code
    - Program Error - run-time error that cannot be avoided even with a bug-free code (Ex: Your SDK is corrupt and can't compile or translate it to machine code properly)
    - System Failures - run-time error that cannot be handled programmatically in a meaninful way (Ex: your ram hardware is faulty)
###  Exception Handling
- Using a try-catch block and optionally finally block
- If you know the block of code you will run will have a risk of throwing an exception, you should put it in the try block
- The catch block will then "catch" that exception and will run instead its block of code
    - Once an exception occurs in the try block, the flow of control jumps to the first associated exception handler that is present anywhere in the call stack. In C#, the catch keyword is used to define an exception handler.
    - If no exception handler for a given exception is present, the program stops executing with an error message.
    - Don't catch an exception unless you can handle it and leave the application in a known state. 
- Optionally, you can add a finally block that will run regardless if your code throws an exception or not
    - Mostly used to clean up any resources you used in the try blcok
#### Throwing Exception
- You can throw an exception yourself in your code by using the throw keyword
- Useful for enforcing certain rules/logic in your program
#### Exception Heirarchy
- Certain exceptions are more specific than other exceptions
- General rule is the most specific exception should be the very first catch block and the least specific exception is at the very last catch block
    - Why? Well if you made the least specific the first catch block then it will always run if any exception is thrown making your other catch blocks useless
## throw vs rethrow?
- google it out

## [Logging](https://en.wikipedia.org/wiki/Logging_(software))
* The systematically way to record a series of events depending on what exactly you are trying to capture
* Ex: Logging user events - you will record every single page they went through, every single customer they have added, every single orders they have made
* The main purpose is for debugging potential bugs since the main problem with debugging is trying to re-create that bug again just to see what exactly did the user did to even get that bug
* Asking for feedback from a user as to what they did is incredibly unreliable so we have a robot to essentially record everything they do
* OF COURSE, that is only limited to what are they doing in the application and highly unethical (maybe illegal I'm not a lawyer) to record everything they do beyond that
## Serilog
* A library we will utilize to add logging functionality with our application
* There are more libraries out there that can accomplish the same task such as NLog but we will stick with Serilog
### [Steps to start Serilog](https://github.com/serilog/serilog/wiki/Getting-Started)
1. Make sure you add the package from Nuget
```
dotnet add package Serilog
dotnet add package Serilog.Sinks.File
```
2. create a Logger using LoggerConfiguration class provided by Serilog
3. Start logging!

## [Garbage Collection](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/fundamentals)
## [Memory Management in .Net](https://medium.com/c-programming/c-memory-management-part-1-c03741c24e4b)
- The GC allocates heap segments where each segment is a contiguous range of memory.
- Objects are allocated in contiguous blocks of memory.
- To mitigate fragmentation, when the [Garbage COllector](https://medium.com/c-programming/c-memory-management-part-3-garbage-collection-18faf118cbf1) frees memory, it tries to defragment it. This process is called **compaction**.
- Objects placed in the heap are categorized into one of 3 generations: 0, 1, or 2. 
- The generation determines the frequency the GC attempts to release memory on managed objects that are no longer referenced by the app. 
- Lower numbered generations are GC'd more frequently.
- Objects are moved from one generation to another based on their lifetime. 
- As objects live longer, they are moved into a higher generation. 
- As mentioned previously, higher generations are GC'd less often. 
- Short term lived objects always remain in generation 0. 
- For example, objects that are referenced during the life of a web request are short lived. 
- Application level singletons generally migrate to generation 2.

- **What is a finalizer?**
    - Finalizers (which are also called destructors) are used to perform any necessary final clean-up when a class instance is being collected by the garbage collector. Some important points about finalizers are:
    - A class can have only one finalizer.
    - A finalizer does not have modifiers or parameters.
    - Finalizers cannot be called explicitly, they are called by the garbage collector (GC) when the GC considers the object eligible for finalization. 
    - They are also called when the program finishes in .NET framework applications.
```
    class Person
    {
        //properties
        public string Name { get; set; }
        public int Age { get; set; }

        public Person() //constructor
        {
            //initialization statements
        }

        ~Person() //finalizer (destructor)
        {
            //cleanup statements
        }
    }
```
- Finalizers called inhertiance chain: finalizers are called recursively for all instances in the inheritance chain, from the most-derived to the least-derived.

```
    class Person
    {
        ~Person() //finalizer (destructor)
        {
            //cleanup statements
            Console.WriteLine("Person's finalizer is called.");
        }
    }

    class Employee : Person
    {
        ~Employee()
        {
            //cleanup statements
            Console.WriteLine("Employee's finalizer is called.");
        }
    }

    class Manager : Employee
    {
        ~Manager()
        {
            //cleanup statements
            Console.WriteLine("Manager's finalizer is called.");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            var manager = new Manager();
        }
    }
```

- **Native memory**
    - Some .NET Core objects rely on native memory. 
    - Native memory can not be collected by the GC. 
    - The .NET object using native memory must free it using native code.
    - .NET provides the IDisposable interface to let developers release native memory. 
    - Even if Dispose is not called, correctly implemented classes call Dispose when the finalizer runs.

- **What is Dispose Method?**
    - We mentioned above that finalizers are called by the garbage collector or when the program finishes (in .NET framework applications). 
    - This means we cannot call them. 
    - If our application uses an expensive external resource, we should then release the resource explicitly. 
    - We can do this by implementing Dispose method from IDisposable interface. 
    - By this way, we can improve the performance of our application as well. Now, let’s see this in practice.

- **How to Implement Dispose Method?**
    - First, we create a class that implements IDisposable interface and then choose Implement interface with Dispose pattern.
```
   class DatabaseConnection : IDisposable
    {

        #region IDisposable Support
        private bool disposedValue = false; // To detect redundant calls

        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects).
                }

                // TODO: free unmanaged resources (unmanaged objects) and override a finalizer below.
                // TODO: set large fields to null.

                disposedValue = true;
            }
        }

        // TODO: override a finalizer only if Dispose(bool disposing) above has code to free unmanaged resources.
        // ~DatabaseConnection() {
        //   // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
        //   Dispose(false);
        // }

        // This code added to correctly implement the disposable pattern.
        public void Dispose()
        {
            // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
            Dispose(true);
            // TODO: uncomment the following line if the finalizer is overridden above.
            // GC.SuppressFinalize(this);
        }
        #endregion

    }
```
- Ex:
```
    class DatabaseConnection : IDisposable
    {

        #region IDisposable Support
        private bool disposedValue = false; // To detect redundant calls

        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                Console.WriteLine("This is the first call to Dispose. Necessary clean-up will be done!");

                if (disposing)
                {
                    // TODO: dispose managed state (managed objects).
                    Console.WriteLine("Explicit call: Dispose is called by the user.");
                }
                else
                {
                    Console.WriteLine("Implicit call: Dispose is called through finalization.");
                }

                // TODO: free unmanaged resources (unmanaged objects) and override a finalizer below.
                Console.WriteLine("Unmanaged resources are cleaned up here.");

                // TODO: set large fields to null.

                disposedValue = true;
            }
            else
            {
                Console.WriteLine("Dispose is called more than one time. No need to clean up!");
            }
        }

        // TODO: override a finalizer only if Dispose(bool disposing) above has code to free unmanaged resources.
        ~DatabaseConnection()
        {
            // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
            Dispose(false);
        }

        // This code added to correctly implement the disposable pattern.
        public void Dispose()
        {
           // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
            Dispose(true);
            // TODO: uncomment the following line if the finalizer is overridden above.
            GC.SuppressFinalize(this);
        } 
        #endregion

    }
```

- Now, we can use DatabaseConnection class in order to see how Dispose pattern acts in different scenarios.
```
    class Program
    {
        static void Main(string[] args)
        {
            var connection = new DatabaseConnection();
            try
            {
                //Write your operational code here
            }
            finally
            {
                connection.Dispose();
            }
        }
    }
```

- Another and commonly used method to call Dispose is using using statement:

```
    class Program
    {
        static void Main(string[] args)
        {
            using (var connection = new DatabaseConnection())
            {
                //Write your operational code here
            }
        }
    }
```
- As you see there is no call to Dispose method because the using statement handles that automatically.
- Both codes above generate the same output.
- in C# 8.0 and above version you can use [using statement](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/using-statement)
  
  ```
    class Program
        {
            static void Main(string[] args)
            {
                using var connection = new DatabaseConnection()            
                    //Write your operational code here            
            }
        }
  ```
# References:
- [Practise Regular Expressions Basics](https://www.codecademy.com/learn/introduction-to-regular-expressions)
- [File Handling overview](https://learn.microsoft.com/en-us/dotnet/standard/io/)
- [File Handling another](https://www.geeksforgeeks.org/basics-of-file-handling-in-c-sharp/)