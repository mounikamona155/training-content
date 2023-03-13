`Keyboard actions:`

A representation of any key input device for interacting with a web page.
There are only 2 actions that can be accomplished with a keyboard: pressing down on a key, and releasing a pressed key. In addition to supporting ASCII characters, each keyboard key has a representation that can be pressed or released in designated sequences

`KeyUp`

```csharp

 public void KeyUp()
        {
            driver.Url = "https://selenium.dev/selenium/web/single_text_input.html";

            new Actions(driver)
                .KeyDown(Keys.Shift)
                .SendKeys("a")
                .KeyUp(Keys.Shift)
                .SendKeys("b")
                .Perform();

            IWebElement textField = driver.FindElement(By.Id("textInput"));
            Assert.AreEqual("Ab", textField.GetAttribute("value"));
        }

```

`keyDown`

```csharp

public void KeyDown()
        {
            driver.Url = "https://selenium.dev/selenium/web/single_text_input.html";

            new Actions(driver)
                .KeyDown(Keys.Shift)
                .SendKeys("a")
                .Perform();

            IWebElement textField = driver.FindElement(By.Id("textInput"));
            Assert.AreEqual("A", textField.GetAttribute("value"));
        }
```
