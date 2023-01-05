using RestaurantReviewsData;

string path = "../RestaurantReviewsData/FileStorage/Restaurant.txt";
IOperations opr= new Operations();
//opr.Add(path);
Console.WriteLine(opr.Get(path));
