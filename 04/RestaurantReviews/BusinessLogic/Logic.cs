using Models;
using Data;

namespace BusinessLogic
{
    public class Logic : ILogic
    {
        IRepo repo;
        public Logic(string constr)
        {
            repo = new SqlRepo(constr);
        }
        public IEnumerable<Restaurant> GetRestaurants()
        {
            return repo.GetAllRestaurants().ToList();
        }

        public IEnumerable<Restaurant> GetRestaurantsByZipcode(string zipcode)
        {
            var query = from r in repo.GetAllRestaurants()
                        where r.ZipCode == zipcode.Trim()
                        select r;
            return query.ToList();
            //return repo.GetAllRestaurants().Where(r=>r.ZipCode == zipcode);
        }
    }
}