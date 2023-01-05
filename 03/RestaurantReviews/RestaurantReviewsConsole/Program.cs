using RestaurantReviewsData;

string path = "../RestaurantReviewsData/FileStorage/Restaurant.txt";
IOperations opr= new Operations();
Console.WriteLine(opr.Get(path));
