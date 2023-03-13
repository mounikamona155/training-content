**Locator strategies**

Ways to identify one or more specific elements in the DOM.

A locator is a way to identify elements on a page. It is the argument passed to the Finding element methods.

Check out our encouraged test practices for tips on locators, including which to use when and why to declare locators separately from the finding methods.

Selenium provides support for these 8 traditional location strategies in WebDriver:

**Traditional Locators**                                                                **Locator	Description**

`class name`: Locates elements whose class name contains the search value (compound class names are not permitted)

`css selector`: Locates elements matching a CSS selector

`id	`: Locates elements whose ID attribute matches the search value

`name`: Locates elements whose NAME attribute matches the search value

`link text`: Locates anchor elements whose visible text matches the search value

`partial link text`: Locates anchor elements whose visible text contains the search value. If multiple elements are matching, only the first one will be selected.

`tag name`: Locates elements whose tag name matches the search value

`xpath`:  Locates elements matching an XPath expression

**Relative Locators**

Selenium 4 introduces Relative Locators (previously called as Friendly Locators). These locators are helpful when it is not easy to construct a locator for the desired element, but easy to describe spatially where the element is in relation to an element that does have an easily constructed locator


`Above`:

If the email text field element is not easily identifiable for some reason, but the password text field element is, we can locate the text field element using the fact that it is an “input” element “above” the password element.

```csharp

var emailLocator = RelativeBy.WithLocator(By.TagName("input")).Above(By.Id("password"));

```

`Below`:

If the password text field element is not easily identifiable for some reason, but the email text field element is, we can locate the text field element using the fact that it is an “input” element “below” the email element.

```csharp

var passwordLocator = RelativeBy.WithLocator(By.TagName("input")).Below(By.Id("email"));

```

`Left of`:

If the cancel button is not easily identifiable for some reason, but the submit button element is, we can locate the cancel button element using the fact that it is a “button” element to the “left of” the submit element.

```csharp

var cancelLocator = RelativeBy.WithLocator(By.tagName("button")).LeftOf(By.Id("submit"));

```

`Right of `:

If the submit button is not easily identifiable for some reason, but the cancel button element is, we can locate the submit button element using the fact that it is a “button” element “to the right of” the cancel element.

```csharp

var submitLocator = RelativeBy.WithLocator(By.tagName("button")).RightOf(By.Id("cancel"));

```

`Near`:

If the relative positioning is not obvious, or it varies based on window size, you can use the near method to identify an element that is at most 50px away from the provided locator. One great use case for this is to work with a form element that doesn’t have an easily constructed locator, but its associated input label element does.

```csharp

var emailLocator = RelativeBy.WithLocator(By.tagName("input")).Near(By.Id("lbl-email"));

```

`Chaining relative locators`:

You can also chain locators if needed. Sometimes the element is most easily identified as being both above/below one element and right/left of another.

```csharp

var submitLocator = RelativeBy.WithLocator(By.tagName("button")).Below(By.Id("email")).RightOf(By.Id("cancel"));

```

var submitLocator = RelativeBy.WithLocator(By.tagName("button")).Below(By.Id("email")).RightOf(By.Id("cancel"));
