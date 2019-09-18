## Enigma ##

Turing – Backend Module 1 Final Independent Project: Self-Assessment

### Learning Goals / Areas of Focus ###
 * Practice breaking a program into logical components
 * Build classes that demonstrate single responsibilities
 * Test drive a well-designed Object Oriented solution
 * Work with file i/o

### Functionality ###

An `Enigma` class, consisting of `encrypt` and `decrypt` methods, was successfully implemented, and encrypt/decrypt command line interfaces were also successfully implemented, as specified in the project requirement's interaction pattern. No attempt was made to implement a `crack` method.

Self-assessed score: 3 / 4

### Object Oriented Programming ###

The final product is comprised of six classes in total, each with a single responsibility, in addition to a `Shift` module that serves as a mixin within the `Encryption` and `Decryption` classes. Only one method includes more than 7 lines of code, and all classes are less than 100 lines. All variable and method names clearly communicate their stated purpose.

Self-assessed score: 3 / 4

### Test Driven Development ###

Best attempts were made to write tests before implementing code, although this was not always the case, an area in which there is acknowledged need for improvement. Overall testing covers every method, evidence for which is supported by [SimpleCov](https://github.com/colszowka/simplecov) test coverage analysis. All tests are named in a descriptive manner that clearly communicates the methods being tested. Mocks and stubs were implemented in three tests for methods whose optional parameters include a randomly generated number and/or current date.

Self-assessed score: 2.5 / 4

### Version Control ###

Git workflow details close to 50 commits, only a few of which may have multiple pieces of functionality; however, the project included less than 10 pull requests. Overall version control, specifically, better use of branches and pull requests, is another identified area in which improvements are needed.  

Self-assessed score: 2.5 / 4
