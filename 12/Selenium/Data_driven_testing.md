**Data driven testing**

A Data-Driven Testing is a type of software testing methodology or more exactly approach to the architecture of automated tests by creating test scripts and reading data from data files. 

In this type, the data files involved basically are Data pools, CSV files, Excel files, ADO objects, ODBC sources, etc. The testing functions create the test scripts in which the test data and the output values are read from the data storage.

**Working of Data-Driven Testing:**

Let’s understand working with a real application scenario:


Suppose taking an application for login credentials both user name and password are required.

If both the user name and password are correct then login successful and it will enter into the home page.

Another case is that when the username is correct but the password is wrong then the login action will fail i.e. showing an Invalid credential and will not allow entering into the home page.

Next when the username is incorrect and the password is correct then the login fails.

Next thing the logic says is that it is a control flow process for checking the conditions and functions.

And the test scripts are taken in the final position and an automation code is implemented for the conditions. The test scripts are working like functions and actions.


**Advantages:**

Data-driven testing allows the reusability of code.

It improves test coverage.

In the case of regression testing, the test application allows the set of data values.

In data-driven testing mainly both the test and verification data are ordered in a single file and separated from some test logic. This type of testing generates a clear-cut idea and logic of the test cases from the test data for the developers and testers.

Changes in the test script do not affect the test data as well as the test process.

There are different tools that generate the test data automatically and a large volume of test data is taken for saving time when necessary.

Less maintenance is required as well as it provides flexibility in application maintenance.

A number of functions and actions can be reused in many test cases present in data-driven testing.

It helps in reducing redundancy and unnecessary duplication of test scripts.

**Disadvantages:**

One of the biggest drawbacks is that the quality of the test depended upon the automation team skills i.e. being implemented.

Data-driven testing requires great knowledge and expertise in the scripting language.

When the amounts of data are more for validation it is taken so much of time to execute.

In this type, maintenance plays a big issue in the code complexity and difficulty of understanding the logic.

More documentation and high-level technical skills are required. Another thing is that the tester should be learned the entire new scripting language.
