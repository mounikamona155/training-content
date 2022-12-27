using System;
using EMS_UI;

Employee emp=new Employee();//instatiang an object of the class

emp.Id ="101";
emp.FirstName="Joe";
emp.LastName="Schwartz";
emp.payRate = 50.0M;
emp.hours = 40;
emp.bonus = 200.0M;
decimal addents = emp.payRate* emp.hours+emp.bonus;
emp.taxes=0.3M * addents;
emp.reimbursements = 25;
//System.Console.WriteLine("Default "+ default(bool));
//Console.WriteLine(emp.GetDetails());
//Console.WriteLine($"Salary - {emp.CalculateSalary()}");


Manager mgr=new Manager();
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
Console.WriteLine($"Salary - ${mgr.CalculateSalary()}/month");