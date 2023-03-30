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
**Mouse actions**

A representation of any pointer device for interacting with a web page.
There are only 3 actions that can be accomplished with a mouse: pressing down on a button, releasing a pressed button, and moving the mouse. Selenium provides convenience methods that combine these actions in the most common ways.

`Click and hold`

This method combines moving the mouse to the center of an element with pressing the left mouse button. This is useful for focusing a specific element:

```csharp
public void ClickAndHold()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";
            
            IWebElement clickable = driver.FindElement(By.Id("clickable"));
            new Actions(driver)
                .ClickAndHold(clickable)
                .Perform();
            
            Assert.AreEqual("focused", driver.FindElement(By.Id("click-status")).Text);
        }
        
        [Test]
        public void ClickAndRelease()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";
            
            IWebElement clickable = driver.FindElement(By.Id("click"));
            new Actions(driver)
                .Click(clickable)
                .Perform();
            
            Assert.IsTrue(driver.Url.Contains("resultPage.html"));
        }

        [Test]
        public void RightClick()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";
            
            IWebElement clickable = driver.FindElement(By.Id("clickable"));
            new Actions(driver)
                .ContextClick(clickable)
                .Perform();
            
            Assert.AreEqual("context-clicked", driver.FindElement(By.Id("click-status")).Text);
        }
        
        [Test]
        public void BackClick()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";

            driver.FindElement(By.Id("click")).Click();
            Assert.AreEqual("We Arrive Here", driver.Title);

            ActionBuilder actionBuilder = new ActionBuilder();
            PointerInputDevice mouse = new PointerInputDevice(PointerKind.Mouse, "default mouse");
            actionBuilder.AddAction(mouse.CreatePointerDown(MouseButton.Back));
            actionBuilder.AddAction(mouse.CreatePointerUp(MouseButton.Back));
            ((IActionExecutor)driver).PerformActions(actionBuilder.ToActionSequenceList());

            Assert.AreEqual("BasicMouseInterfaceTest", driver.Title);
        }

        [Test]
        public void ForwardClick()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";

            driver.FindElement(By.Id("click")).Click();
            driver.Navigate().Back();
            Assert.AreEqual("BasicMouseInterfaceTest", driver.Title);

            ActionBuilder actionBuilder = new ActionBuilder();
            PointerInputDevice mouse = new PointerInputDevice(PointerKind.Mouse, "default mouse");
            actionBuilder.AddAction(mouse.CreatePointerDown(MouseButton.Forward));
            actionBuilder.AddAction(mouse.CreatePointerUp(MouseButton.Forward));
            ((IActionExecutor)driver).PerformActions(actionBuilder.ToActionSequenceList());

            Assert.AreEqual("We Arrive Here", driver.Title);
        }

        [Test]
        public void DoubleClick()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";
            
            IWebElement clickable = driver.FindElement(By.Id("clickable"));
            new Actions(driver)
                .DoubleClick(clickable)
                .Perform();
            
            Assert.AreEqual("double-clicked", driver.FindElement(By.Id("click-status")).Text);
        }

        [Test]
        public void Hovers()
        {
            driver.Url = "https://selenium.dev/selenium/web/mouse_interaction.html";
            
            IWebElement hoverable = driver.FindElement(By.Id("hover"));
            new Actions(driver)
                .MoveToElement(hoverable)
                .Perform();
            
            Assert.AreEqual("hovered", driver.FindElement(By.Id("move-status")).Text);
        }
```
