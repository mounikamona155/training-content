namespace MVC_app.Models
{
    public class Restaurant
    {
        public Restaurant()
        {
            this.Id = 1;
            this.Name = "Chipotle";
            this.Zipcode = "20190";
        }
        public int Id { get; set; }
        public string Name { get; set; }
        public string Zipcode { get; set; }
    }
}
