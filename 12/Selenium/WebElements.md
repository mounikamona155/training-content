**WebElement in Selenium**

Forms are the fundamental web elements to receive information from the website visitors. Web forms have different GUI elements like Text boxes, Password fields, Checkboxes, Radio buttons, dropdowns, file inputs, etc.

Web Driver provides the following two WebElement methods to find the elements.

`findElement()` – finds a single web element and returns as a WebElement Selenium object.
`findElements()` – returns a list of WebElement objects matching the locator criteria.

`For Example:`

```csharp
            IWebDriver driver = new ChromeDriver();
            String baseUrl = "https://demo.guru99.com/test/login.html";
            driver.Navigate().GoToUrl(baseUrl);

            // Get the WebElement corresponding to the Email Address(TextField)		
            WebElement email =(WebElement) driver.FindElement(By.Id("email"));

            // Get the WebElement corresponding to the Password Field		
            WebElement password = (WebElement)driver.FindElement(By.Name("passwd"));

            email.SendKeys("abcd@gmail.com");
            password.SendKeys("abcdefghlkjl");
           

            // Deleting values in the text box		
            email.Clear();
            password.Clear();
            

            // Find the submit button		
            WebElement login = (WebElement)driver.FindElement(By.Id("SubmitLogin"));

            // Using click method to submit form		
            email.SendKeys("abcd@gmail.com");
            password.SendKeys("abcdefghlkjl");
            login.Click();
           

            //using submit method to submit the form. Submit used on password field		
            driver.Navigate().GoToUrl(baseUrl);
            driver.FindElement(By.Id("email")).SendKeys("abcd@gmail.com");
            driver.FindElement(By.Name("passwd")).SendKeys("abcdefghlkjl");
            driver.FindElement(By.Id("SubmitLogin")).Submit();
            
           
        }
```
