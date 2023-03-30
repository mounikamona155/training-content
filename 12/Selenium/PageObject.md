**What is Page Object Model (POM) In Selenium C#?**


Page Object Model in Selenium C# is a design pattern that is extensively used by the Selenium community for automation tests. The basic design principle that the Page Object Model in Selenium C# follows is that a central object repository should be created for controls on a web page. Hence, each web page will be represented by a separate class.

The Page Objects (or page classes) contains the elements of the corresponding web page along with necessary methods to access the elements on the page. Hence, Selenium test automation implementation that uses the Page Object Model in Selenium C# will constitute different classes for each web page thereby making code maintenance easier.

**Advantages of Page Object Model In Selenium C#**

Below are some of the major advantages of using the Page Object Model in Selenium C#

`Better Maintenance` – With separate page objects (or page classes) for different web pages, functionality or web locator changes will have a less impact on the change in test scripts. This makes the code cleaner and more maintainable as Selenium test automation implementation is spread across separate page classes.
`Minimal Changes Due To UI Updates` – The effect of changes in the web locators will only be limited to the page classes, created for automated browser testing of those web pages. This reduces the overall effort spent in changing test scripts due to frequent UI updates.
`Reusability` – The page object methods defined in different page classes can be reused across Selenium test automation scripts. This, in turn, results in a reduction of code size as there is the increased usage of reusability with Page Object Model in Selenium C#.



**What is Page Factory?**

Page Factory, an extension to Page Objects, is primarily used for initialization of the web elements defined in the page classes (or page objects). Web elements used with Page Objects have to be initialized before they can be used further and Page Factory simplifies the initialization with the initElements method.

Shown below are some of the ways in which initElements function can be used:

`Method 1`

```csharp

HomePage test_page = new HomePage(web_driver);
PageFactory.initElements(web_driver, test_page);
```

`Method 2`

```csharp
HomePage page = PageFactory.intElements(web_driver,HomePage.class)
```

`Method 3`

```csharp
//Constructor of HomePage Class
public HomePage(WebDriver web_driver) {           
      this.driver = web_driver; 
      PageFactory.initElements(web_driver, this);
}

```

Using @FindsBy annotation, every WebElement variable is initialized by the Page Factory based on the locators configured to locate the element on the web page.

```csharp

[FindsBy(How = How.XPath, Using = "//*[@id='tsf']/div[2]/div[1]/div[1]/div/div[2]/input")]
[CacheLookup]
private IWebElement elem_search_text;

```
