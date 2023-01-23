using Data_EF_DBFirst.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_EF_DBFirst
{
    public interface IRepo
    {
        List<Restaurant> GetRestaurants();
    }
}
