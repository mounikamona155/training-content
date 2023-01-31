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
        public Entities.Restaurant AddRestaurant(Entities.Restaurant restaurant)
        {
            _context.Add(restaurant);// no need to add any sql INSERT query just call Add method and it will create INSERT query behind the scenes
            _context.SaveChanges(); // this method will fire the query to DB and persist the changes
            return restaurant;
        }

        public List<Entities.Restaurant> GetAllRestaurants()
        {
            return _context.Restaurants.ToList();
        }

        public Entities.Restaurant RemoveRestaurant(string name)
        {
            var search =_context.Restaurants.Where(restaurant => restaurant.Name == name).FirstOrDefault();
            if(search != null)
            {
                _context.Restaurants.Remove(search);
                _context.SaveChanges();
            }
            return search;
        }

        public Entities.Restaurant UpdateRestaurant(Entities.Restaurant restaurant)
        {
                _context.Restaurants.Update(restaurant);
                _context.SaveChanges();
            return restaurant;
        }
    }
}