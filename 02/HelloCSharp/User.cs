using System;
namespace HelloCSharp
{
    public class User
    {
        public static void GreetUser(){

            Console.WriteLine("Please enter your first name");
            string fname=Console.ReadLine();
            Console.WriteLine("Please enter your last name");
            string lname=Console.ReadLine();
            Console.WriteLine($"Hello {fname} {lname} - {DateTime.Now}");
        }
    }
}