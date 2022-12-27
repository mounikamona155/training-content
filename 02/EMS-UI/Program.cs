using System;
using EMS_UI;

Employee emp=new Employee();//instatiang an object of the class

// emp.Id ="";
// emp.FirstName="Joe";
// emp.LastName="Schwartz";
//System.Console.WriteLine("Default "+ default(bool));
Console.WriteLine(emp.GetDetails("201","Carol","Baxtor"));


// Manager mgr=new Manager();
// Console.WriteLine($"Employee Id - {mgr.Id} \nEmployee name - {mgr.FirstName} {mgr.LastName}");