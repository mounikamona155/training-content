using System;
using EMS_UI;
using EMSLib;
/*Employee emp=new Employee();//instatiang an object of the class

emp.Id ="101";
emp.FirstName="Joe";
emp.LastName="Schwartz";
emp.payRate = 50.0M;
emp.hours = 40;
emp.bonus = 200.0M;
decimal addents = emp.payRate* emp.hours+emp.bonus;
emp.taxes=0.3M * addents;
emp.reimbursements = 25;*/
//System.Console.WriteLine("Default "+ default(bool));
//Console.WriteLine(emp.GetDetails());
//Console.WriteLine($"Salary - {emp.CalculateSalary()}");


/*Manager mgr=new Manager();
mgr.Id ="301";
mgr.FirstName="Kaveri";
mgr.LastName="Priya";
mgr.payRate = 150.0M;
mgr.hours = 40;
mgr.bonus = 1200.0M;
decimal MgrAddents = mgr.payRate* mgr.hours+mgr.bonus;
mgr.taxes=0.4M * addents;
mgr.reimbursements = 525;
mgr.paidVacation = 1000;
mgr.healthCare = 500;
mgr.housingAllowance = 625;

Console.WriteLine(mgr.GetDetails());
Console.WriteLine($"Salary - ${mgr.CalculateSalary()}/month");*/


// IEmployeeOperations2 empOp2= new EmployeeOperationsImplementation();// upcasting 

/*EMS.Employee empStr=new EMS.Employee();
Console.WriteLine($"{empStr.id} - {empStr.firstName} {empStr.lastName} - ${empStr.salary}");

//Upcasting 
EMS.A a = new EMS.B();//upcasting

EMS.B b = (EMS.B)a;// downcasting*/

//Person is a class added in Class Lib and can be accessed after adding refernce
/*Person person = new Person();
person.Id=1;
person.Name="Emily";
person.Age=35;
Console.Write(person.ToString());*/

// Arrays
/*string[] names = {"Kaveri","Ophilia","Carol","Michel","Branda"};
Person[] persons = {
    new Person(){Id=1, Name="Fred", Age=40},
    new Person(){Id=2, Name="Marielle", Age=25},
    new Person(){Id=3, Name="Stephen", Age=23},
    new Person(){Id=4, Name="Juniper", Age=27}
};
//names[5] ="Marielle";// this will give IndexOutOfRenageException as arrays size is fixed and adding extra element will raise an exception
Console.WriteLine(names[5]);
foreach (var p in persons)
{
    Console.WriteLine($"{p.Id} - {p.Name} is {p.Age} years");
}*/

// Collections
Person per = new Person();
var persons=per.GetPersons();
foreach (var p in persons.Keys)
{
    Console.WriteLine($"{p} - {persons[p].Id} - {persons[p].Name} is {persons[p].Age} years");
    //Console.WriteLine($"{p.Id} - {p.Name} is {p.Age} years");
}