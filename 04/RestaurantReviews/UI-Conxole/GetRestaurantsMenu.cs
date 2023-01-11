using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI_Console
{
    internal class GetRestaurantsMenu : IMenu
    {
        IFileRepo repo = new FileRepo();
        public void Display()
        {
            Console.WriteLine("Please select an option to filter the Restaurant reviews database");
            Console.WriteLine("[1] All Restaurants");
            Console.WriteLine("[0] Go back");
        }

        public string UserChoice()
        {
            string userInput = Console.ReadLine();

            switch (userInput)
            {
                case "0":
                    return "Menu";
                case "1":
                    //Logic to display the result
                    var listOfRestaurant = repo.GetAllRestaurants();
                    foreach (var item in listOfRestaurant)
                    {
                        Console.WriteLine("================");
                        Console.WriteLine(item.ToString());
                    }
                    Console.WriteLine("Please press Enter to continue");
                    Console.ReadLine();

                    return "Menu";
                default:
                    Console.WriteLine("Please input a valid response");
                    Console.WriteLine("Please press Enter to continue");
                    Console.ReadLine();
                    return "GetRestaurants";

            }
        }
    }
}
