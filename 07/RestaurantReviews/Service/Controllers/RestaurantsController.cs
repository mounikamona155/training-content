using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Models;


namespace Service.Controllers
{
    //Routing - URL formation for the api 
    [Route("api/[controller]")]
    [ApiController]
    public class RestaurantsController : ControllerBase // Controller handles all user requests
    {
        Restaurant r = null; //new Restaurant()
        //{
        //    Id = 2,
        //    Name = "Chipotle",
        //    Cuisine = "Tex Mex"
        //};

        [HttpGet("GetAll")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        public ActionResult Get() // Action method - processing of the request
        {
         
            if (r == null)
                return NotFound("No restaurants found"); //404 
            else if (r.Id == 1) //200 -
                return Ok(r);
            else if (r.Id > 1)
                return BadRequest("Invalid Restaurant"); //400
            else
                return NoContent();//204
        }
    }
}
