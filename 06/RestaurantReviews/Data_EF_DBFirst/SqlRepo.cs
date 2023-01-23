using Data_EF_DBFirst.Entities;

namespace Data_EF_DBFirst
{
    public class SqlRepo : IRepo
    {
        RestaurantDbContext context = new RestaurantDbContext();
        public List<Restaurant> GetRestaurants()
        {                
            return context.Restaurants.ToList();
        }
    }
}