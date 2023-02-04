using DataFluentApi.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFluentApi
{
    public class ReviewRepo : IReviewRepo
    {
        private readonly RestaurantDbContext _context;
        public ReviewRepo(RestaurantDbContext context)
        {
            _context = context;
        }
        public Review AddReview(Restaurant restaurant,Review review)
        {
            _context.Reviews.Add(
                new Review()
                {
                    //task 2
                    // write code to add overall rating as average of taste, ambience and service rating
                    RestaurantId = restaurant.Id,
                    AmbienceRating = review.AmbienceRating,
                    Comment = review.Comment,
                    ServiceRating = review.ServiceRating,
                    TasteRating = review.TasteRating
                }

                );
            _context.SaveChanges();
            return review;
        }
        // task 3 - create the get Reviews Action in a way that it also shows average rating in the JSON without making any change to DB
        public List<Review> GetReviews(Entities.Restaurant restaurant)
        {
            var overallrate = _context.Reviews;
            var query = from o in overallrate
                        where o.RestaurantId == restaurant.Id
                        select o;
            foreach (var val in query)
            {
                val.OverallRating = (val.TasteRating + val.ServiceRating + val.AmbienceRating) / 3;
            }
            _context.SaveChanges();

            return _context.Reviews.Where(x=>x.RestaurantId == restaurant.Id).ToList();
        }
    }
}
