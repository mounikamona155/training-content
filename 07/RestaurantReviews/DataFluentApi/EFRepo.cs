using DataFluentApi.Entities;
using Models;

namespace DataFluentApi
{
    public class EFRepo : IRepo<Entities.Restaurant>
    {
        private readonly RestaurantDbContext _context;
        public EFRepo(RestaurantDbContext context)
        {
            _context = context;
        }
        public Entities.Restaurant Add(Entities.Restaurant restaurant)
        {
            _context.Add(restaurant);// no need to add any sql INSERT query just call Add method and it will create INSERT query behind the scenes
            _context.SaveChanges(); // this method will fire the query to DB and persist the changes
            return restaurant;
        }

        public List<Entities.Restaurant> GetAllRestaurants()
        {
            return _context.Restaurants.ToList();
        }
    }
}