**When we talk about testing in Angular we are usually talking about two different types of testing:**

 - Unit Testing

  This is sometimes also called Isolated testing. It’s the practice of testing small isolated pieces of code. If your test uses some external resource, like the network or a database, it’s not a unit test.

 - Functional Testing

  This is defined as the testing of the complete functionality of an application. In practice with web apps, this means interacting with your application as it’s running in a browser just like a user would interact with it in real life, i.e. via clicks on a page.

  This is also called End to End or E2E testing.



**Jasmine**

Jasmine is a JavaScript testing framework that supports a software development practice called Behaviour-Driven Development, or BDD for short. 
It’s a specific flavour of Test-Driven Development (TDD).

Jasmine, and BDD in general, attempts to describe tests in a human readable format so that non-technical people can understand what is being tested. 
However even if you are technical reading tests in BDD format makes it a lot easier to understand what’s going on.

For example if we wanted to test this function:

```TypeScript
function helloWorld() {
  return 'Hello world!';
}
```
We would write a Jasmine test spec like so:

```TypeScript

describe('Hello world', () => { (1)
  it('says hello', () => { (2)
    expect(helloWorld()) (3)
        .toEqual('Hello world!'); (4)
  });
}); 

```

- The `describe(string, function)` function defines what we call a Test Suite, a collection of individual Test Specs.
- The `it(string, function)` function defines an individual Test Spec, this contains one or more Test Expectations.
- The `expect(actual)` expression is what we call an Expectation. In conjunction with a Matcher it describes an expected piece of behaviour in the application.
- The `matcher(expected)` expression is what we call a Matcher. It does a boolean comparison with the expected value passed in vs. the actual value passed to the expect function, 
if they are false the spec fails.

**Built-In Matchers**

Jasmine comes with a few pre-built matchers like so:

```TypeScript
expect(array).toContain(member);
expect(fn).toThrow(string);
expect(fn).toThrowError(string);
expect(instance).toBe(instance);
expect(mixed).toBeDefined();
expect(mixed).toBeFalsy();
expect(mixed).toBeNull();
expect(mixed).toBeTruthy();
expect(mixed).toBeUndefined();
expect(mixed).toEqual(mixed);
expect(mixed).toMatch(pattern);
expect(number).toBeCloseTo(number, decimalPlaces);
expect(number).toBeGreaterThan(number);
expect(number).toBeLessThan(number);
expect(number).toBeNaN();
expect(spy).toHaveBeenCalled();
expect(spy).toHaveBeenCalledTimes(number);
expect(spy).toHaveBeenCalledWith(...arguments);
```

**Setup and Teardown**

Sometimes in order to test a feature we need to perform some setup, perhaps it’s creating some test objects. Also we may need to perform some 
cleanup activities after we have finished testing, perhaps we need to delete some files from the hard drive.

These activities are called setup and teardown (for cleaning up) and Jasmine has a few functions we can use to make this easier:

- beforeAll
  This function is called once, before all the specs in a test suite (describe function) are run.

- afterAll
  This function is called once after all the specs in a test suite are finished.

- beforeEach
  This function is called before each test specification (it function) is run.

- afterEach
  This function is called after each test specification is run.

We might use these functions like so:

```TypeScript
describe('Hello world', () => {

  let expected = "";

  beforeEach(() => {
    expected = "Hello World";
  });

  afterEach(() => {
    expected = "";
  });

  it('says hello', () => {
    expect(helloWorld())
        .toEqual(expected);
  });
});

```
**Karma**

Manually running Jasmine tests by refreshing a browser tab repeatedly in different browsers every time we edit some code can become tiresome.

Karma is a tool which lets us spawn browsers and run Jasmine tests inside of them all from the command line. The results of the tests are also displayed on the command line.

Karma can also watch your development files for changes and re-run the tests automatically.

Karma lets us run Jasmine tests as part of a development tool chain which requires tests to be runnable and results inspectable via the command line.

It’s not necessary to know the internals of how Karma works. When using the Angular CLI it handles the configuration for us and for the rest of this section we are going to run the tests using only Jasmine.


**Reference**

https://jasmine.github.io/tutorials/your_first_suite
