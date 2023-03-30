**Note**

Everything in Angular is an instance of a class, be it a Component, Directive, Pipe and so on. So once you know how to test a basic class you can test everything.

Flow of Test case::

- Angular testing package includes two utilities called TestBed and async
- TestBed is the main Angular utility package.
- The `describe` container contains different blocks(it, beforeEach,etc.,)
- Only beforeEach() runs before any other block. Other blocks do not depend on each other to run.

**TestBed**

The Angular Test Bed (ATB) is a higher level Angular Only testing framework that allows us to easily test behaviours that depend on the Angular Framework.

We still write our tests in Jasmine and run using Karma but we now have a slightly easier way to create components, handle injection, 
test asynchronous behaviour and interact with our application.

The Angular team provides the TestBed to ease unit testing. The TestBed creates and configures an Angular environment so you can test particular application
parts like Components and Services safely and easily.

**Configuring the testing Module**

The TestBed comes with a testing Module that is configured like normal Modules in your application: You can declare Components, Directives and Pipes, 
provide Services and other Injectables as well as import other Modules. TestBed has a static method configureTestingModule that accepts a Module definition:


```Typescript
TestBed.configureTestingModule({
  imports: [ /*… */ ],
  declarations: [ /*… */ ],
  providers: [ /*… */ ],
});
```
