using System.IO;
using System.Text;
namespace RestaurantReviewsData
{
    public class Operations : IOperations
    {
        public void Add(string path)
        {
            // This will cxreate a file as per in the path if its not there
            StreamWriter sw = new StreamWriter(path, true);

            Restaurant restaurant = new Restaurant();
            
            sw.WriteLine($"{restaurant.Id} {restaurant.Name} {restaurant.OpenTime}-{restaurant.CloseTime} {restaurant.Phone}");
            sw.Flush();
            sw.Close();
            Console.WriteLine("Restaurant Added");
        }
        public string Get(string path){
            StreamReader reader = new StreamReader(path);

            reader.BaseStream.Seek(0, SeekOrigin.Begin);

            string restaurants=reader.ReadLine();

            while (restaurants!= null)
            {
                Console.WriteLine(restaurants);
                restaurants = reader.ReadLine();
            }
            reader.Close();

            return restaurants;
        }
    }
}