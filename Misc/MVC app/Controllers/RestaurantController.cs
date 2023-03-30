using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MVC_app.Models;

namespace MVC_app.Controllers
{
    public class RestaurantController : Controller
    {
        // GET: RestaurantController
        public ActionResult Index()
        {
            List<Restaurant> restaurants = new List<Restaurant>()
            {
                new Restaurant(){Id= 1, Name = "Chipotle", Zipcode="20190" },
                new Restaurant(){Id= 2, Name = "AppleBees", Zipcode="20190" },
                new Restaurant(){Id= 3, Name = "iHop", Zipcode="20190" },
            };

            //return View(restaurants);

            ViewBag.Restaurant = restaurants;
            return View();
        } 

        // GET: RestaurantController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: RestaurantController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RestaurantController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: RestaurantController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: RestaurantController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: RestaurantController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: RestaurantController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
