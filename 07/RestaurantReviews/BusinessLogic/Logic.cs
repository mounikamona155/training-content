using Models;
using EF = DataFluentApi;

namespace BusinessLogic
{
    public class Logic : ILogic
    {
        IRepo<EF.Entities.Restaurant> _repo;
        public Logic(IRepo<EF.Entities.Restaurant> repo)
        {
            _repo = repo;
        }
        public IEnumerable<Restaurant> GetRestaurants()
        {
          return Mapper.Map(_repo.GetAllRestaurants());
        }

        public IEnumerable<Restaurant> GetRestaurantsByZipcode(string zipcode)
        {
            var search = _repo.GetAllRestaurants().Where(r=>r.Zipcode==zipcode);
            return Mapper.Map(search);
        }
    }
}