
### Functionality Summary

* The goal is a simple test app that has a single page.
* The app allows the user to enter an integer.
* Upon submission, the app reports if the integer is prime.
* Other mathematical attributes of the input will be determined as future features.
* Negative values are not allowed.
* Input is assumed to fit into a 64-bit long.

### Technical Summary

* use Java 21
* use Play Framework 3.0.5
* use sbt version 1.10.1
* use JUnit 5 
* use latest jQuery: via CDN
* use latest Knockout JS: via CDN
* for invalid input, return HTTP 400 with human-readable message
* no database configuration for now (and likely a long time) 
* no authentication

### Code Details

* Do not prefix files or classes with `Prime`: use `MathFacts` instead.
    * the notion of primality will be just one attribute of many 
* Generally, use AJAX/JSON approach with Knockout JS and the back-end.
