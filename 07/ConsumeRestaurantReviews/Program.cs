using ConsumeRestaurantReviews.Models;

using var client = new HttpClient();

client.BaseAddress = new Uri("https://localhost:7231/api/Restaurants/all");

try{
    var response=client.GetAsync(client.BaseAddress);
    response.Wait();
    
    if(response.Result.IsSuccessStatusCode){
        var readTask=response.Result.Content.ReadAsAsync<List<Restaurant>>();
        readTask.Wait();

        var restaurants = readTask.Result;
        foreach (var r in restaurants)
        {
            System.Console.WriteLine(r.ToString());
        }

    }
}
catch(System.Net.Http.HttpRequestException ex){
    System.Console.WriteLine(ex.Message);
}
catch(Exception ex){
    System.Console.WriteLine(ex.Message);
}