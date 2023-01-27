using HelloRESTFulApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HelloRESTFulApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RestaurantController : ControllerBase
    {
        [HttpGet()]
        public ActionResult<List<Restaurant>> Get()
        {
            return DummyData.GetRestaurants();
        }
    }
}
