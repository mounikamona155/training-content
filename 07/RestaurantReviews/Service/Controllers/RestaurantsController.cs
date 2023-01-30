using BusinessLogic;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace Service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RestaurantsController : ControllerBase
    {
        ILogic _logic;
        public RestaurantsController(ILogic logic)
        {
            _logic = logic;
        }
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                var restaurants = _logic.GetRestaurants();
                if (restaurants.Count() > 0)
                    return Ok(restaurants);
                else
                    return BadRequest("Seems like your database donot have records for Restaurant Table");
            }
            catch (SqlException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("zipcode")]
        public ActionResult GetByZipcode(string zipcode)
        {
            try
            {
                var search = _logic.GetRestaurantsByZipcode(zipcode);
                if(search.Count() > 0)
                    return Ok(search);
                else
                    return NotFound($"Restaurannts in the zipcode {zipcode} not available, please try with different zipcode");
            }
            catch(SqlException ex)
            {
                return BadRequest(ex.Message);
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }
    }
}
