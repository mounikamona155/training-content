# ASP.NET
* Another framework included in our .NET 6 that specializes in creating web application in either C# or VB
* For us, we will just use it to create a restful web api instead of including the frontend tech just yet

## [Controller](https://learn.microsoft.com/en-us/aspnet/core/web-api/?view=aspnetcore-7.0)
* Their main responsiblity is to handle HTTP requests and formulate an appropriate HTTP response based on what functionality it is trying to achieve
* Usually you will a controller class in the controller folder and with suffix as `<classname>Controller` and it inherits from `ControllerBase`.
    * The ControllerBase class provides many [properties and methods](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.controllerbase?view=aspnetcore-7.0) that are useful for handling HTTP requests.
* This is why the first thing we do to define an action (basically a method inside of controller) is to tell it what HTTP verb it should handle
    * Ex: [HttpGet] - no surprises handles http get requests
* You also specify the actual route/endpoints the client needs to use for specific functionalities inside of your controller
    * Ex: [Route(api/[controller])] - the endpoint has to be (website name).com/api/(The controller name)
* It will call on the appropriate business logic to process what the clients wants to do
    * You essentially replaced the console project to instead just have the web api project as the starting point

## Action Methods
* The public methods of the controller are called action methods or simply actions.
* When the Web API framework receives a request, it routes the request to an action.
### [Action Return Types](https://learn.microsoft.com/en-us/aspnet/core/web-api/action-return-types?view=aspnetcore-7.0)
* ASP.NET Core provides the following options for web API controller action return types:
    * Specific type - The most basic action returns a primitive or complex data type, for example, string or a custom object.
    * IActionResult - to return appropriate status codes but type casting might be needed.
        * if there are multiple return types and paths in this type of action, liberal use of the [ProducesResponseType] attribute is necessary.
    * ActionResult<T> -  It enables returning a type deriving from ActionResult or return a specific type. 
## Model Binding/ Binding Source
* It is a way to bind data (JSON objects) coming from HTTP request to be automatically mapped into a C# model
* Remember how HTTP transfers information via JSON files? Well ASP.NET can automatically map that JSON object into a C# object
    * So instead of manually mapping it like our DL, it does it for us
    * Just need to know the fancy name that does that operation which is model binding
* Ex: controller action([FromBody] someModel p_model)
    * Mapping whatever JSON file you got into a "someModel" object that C# understands
* Model binding can also do it from C# object into JSON object
    * When we return a C# object in an action, it automatically creates a JSON object that gets put into an HTTP response
* Some binding sources that can be used are as follows:
    * [FromBody] - Request body
    * [FromForm] - Form data in the request body
    * [FromHeader] - Request header
    * [FromQuery] - Request query string parameter
    * [FromRoute] - Route data from the current request

## Routing
* Allows ASP.NET to know where to take the user's http request
    * In our case, which controller and which action inside of the controller should the http request go to
* It uses **routing middleware** to be able to find the appropriate controller and then the appropriate action within the controller to handle the request
    * It is the middleman between the asp.net app and the client
    * It also handled http responses and routes that information back to the client

## Filters
* They are used to create your own custom logic (your own code) if a certain event has happened
    * Applies to most filters but not all
### Authorization
* Used to determine whether the user is authorized for the request
* This will run first
### Resource
* Used for logging, caching, and other resource related operations
* You can configure whether to run the resource filter first or after an action
* Ex: OnResourceExecuting filter will run your custom code first before doing any model binding operations
* For optimization purposes
* Runs after Authorization
### Action
* Will perform your custom code after or before a controller action
### Exception
* Will perform your custom code after or before an exception
### Result
* Will perform some code after or before the execution of giving a view or IActionResult

## OpenAPI (Swagger)
* Just the fancy technical term for Swagger
* Swagger is a tool pre-built in our ASP.NET project with the sole purpose of checking if our rest api is definitely working
* As you have guess, we don't really have a console app so we can visually see that our app is working so they created swagger just for the purpose
* It will show you every action inside of a controller and also test them
    * It can check what http response body it gave
    * It can check what http request the client needs to give to make it work and so on
* Really useful debugging tool for our api

## ASP.NET Caching
* Storing information in your app and just recalling that information rather than doing another operation on your database
* Useful if you expect to use that information multiple times to do a single operation
* Useful if your function does a complex sql operation to get that data that takes time and to store that information to call on instead
* Might cause problems if database gets updated and using the cache information will be outdated

