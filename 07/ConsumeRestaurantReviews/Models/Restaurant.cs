namespace ConsumeRestaurantReviews.Models
{
    public class Restaurant
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string? Cuisine { get; set; }
        public TimeSpan? OpenTime { get; set; }
        public TimeSpan? CloseTime { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public string? Website { get; set; }
        public string ZipCode { get; set; }

        public override string ToString()
        {
            Console.WriteLine("---------------------------------");
            return $"Id - {Id}\nName - {Name}\nTimings - {OpenTime.ToString()}-{CloseTime.ToString()}\nContact Email - {Email}\nPhone {Phone}\nWebsite - {Website}\nZipcode - {ZipCode} ";
        }
    }
}