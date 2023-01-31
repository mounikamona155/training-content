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

        public Restaurant AddRestaurant(Restaurant r)
        {
            return Mapper.Map(_repo.AddRestaurant(Mapper.Map(r)));
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

        public Restaurant RemoveRestaurantByName(string r)
        {
            var deletedRestaurant = _repo.RemoveRestaurant(r);
            return Mapper.Map(deletedRestaurant);
        }

        public Restaurant UpdateRestaurant(string name, Restaurant r)
        {
            var restaurant =  (from rst in _repo.GetAllRestaurants()
                              where rst.Name==name &&
                              rst.Id==r.Id
                              select rst).FirstOrDefault();
            if(restaurant != null)
            {
                restaurant.Name = r.Name;
                restaurant.Zipcode = r.ZipCode;
                restaurant.Cuisine= r.Cuisine;
                restaurant.CloseTime = r.CloseTime;
                restaurant.OpenTime = r.OpenTime;
                restaurant.Email = r.Email;
                restaurant.Website = r.Website;
                restaurant.Phone = r.Phone;
                restaurant = _repo.UpdateRestaurant(restaurant);
            }
            
            return Mapper.Map(restaurant);
        }
    }
}