# Closures & Scope in Ruby

# Objectives

* **Content**: Describe how closures can be used to organize code with less syntax than classes and objects.
* **Applied**: Translate a class-based `Logger` implementation into a closure (`Proc`)-based `make_logger()` method.
* **Synthesis**: Learn Javascript!

## Closures

When you define an anonymous function in Ruby, it **encloses** the scope in which it was defined, meaning it will always refer to the same variables that existed when it was first defined, even after those variables have "fallen out of scope" for the rest of the program.

Take a look at `closures_counters.rb`.

