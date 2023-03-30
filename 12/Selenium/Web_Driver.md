**Web Driver**

WebDriver drives a browser natively, as a user would, either locally or on a remote machine using the Selenium server, marks a leap forward in terms of browser automation.

Selenium WebDriver refers to both the language bindings and the implementations of the individual browser controlling code. This is commonly referred to as just WebDriver.

**Packet Manager**

Install-Package Selenium.WebDriver

Install Browser Driver

If it is chrome then install

Selenium.WebDriver.ChromeDriver

**Eight Basic Components**

Everything Selenium does is send the browser commands to do something or send requests for information. Most of what you’ll do with Selenium is a combination of these basic commands:

1. Start the session


```csharp
            IWebDriver driver = new ChromeDriver();
```

2. Take action on browser

In this example we are navigating to a web page.

```csharp
            driver.Navigate().GoToUrl("https://www.selenium.dev/selenium/web/web-form.html");
```
3. Request browser information

There are a bunch of types of information about the browser you can request, including window handles, browser size / position, cookies, alerts, etc.

```csharp
            var title = driver.Title;
```


4. Establish Waiting Strategy

Synchronizing the code with the current state of the browser is one of the biggest challenges with Selenium, and doing it well is an advanced topic.

Essentially you want to make sure that the element is on the page before you attempt to locate it and the element is in an interactable state before you attempt to interact with it.

An implicit wait is rarely the best solution, but it’s the easiest to demonstrate here, so we’ll use it as a placeholder.


```csharp
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromMilliseconds(500);
```

5. Find an element

The majority of commands in most Selenium sessions are element related, and you can’t interact with one without first finding an element

```csharp
            var textBox = driver.FindElement(By.Name("my-text"));
            var submitButton = driver.FindElement(By.TagName("button"));
```
 
6. Take action on element

There are only a handful of actions to take on an element, but you will use them frequently.

```csharp
            textBox.SendKeys("Selenium");
            submitButton.Click();
```

7. Request element information

Elements store a lot of information that can be requested.

```csharp
            var value = message.Text;
```

8. End the session

This ends the driver process, which by default closes the browser as well. No more commands can be sent to this driver instance.

```csharp
            driver.Quit();
```

Putting everything together
Let’s combine these 8 things into a complete script with assertions that can be executed by a test runner.

```csharp

using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace SeleniumDocs.GettingStarted
{

    public class FirstScriptTest
    {

        [Test]
        public void ChromeSession()
        {
            IWebDriver driver = new ChromeDriver();

            driver.Navigate().GoToUrl("https://www.selenium.dev/selenium/web/web-form.html");

            var title = driver.Title;
            Assert.AreEqual("Web form", title);

            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromMilliseconds(500);

            var textBox = driver.FindElement(By.Name("my-text"));
            var submitButton = driver.FindElement(By.TagName("button"));
            
            textBox.SendKeys("Selenium");
            submitButton.Click();
            
            var message = driver.FindElement(By.Id("message"));
            var value = message.Text;
            Assert.AreEqual("Received!", value);
            
            driver.Quit();
        }
    }
}
```
```
