using EMS_UI;

Employee emp=new Employee();//instatiang an object of the class

emp.Id ="102";
emp.FirstName="Joe";
emp.LastName="Schwartz";

System.Console.WriteLine($"Employee Id - {emp.Id} \nEmployee name - {emp.FirstName} {emp.LastName}");