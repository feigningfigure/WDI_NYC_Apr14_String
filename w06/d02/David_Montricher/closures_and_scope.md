# Closures & Scope in Ruby

# Objectives

* **Content**: Describe how closures can be used to organize code with less syntax than classes and objects.
* **Applied**: Translate a class-based `Logger` implementation into a closure (`Proc`)-based `make_logger()` method.
* **Synthesis**: Learn Javascript!

## Closures

When you define an anonymous function in Ruby, it **encloses** the scope in which it was defined, meaning it will always refer to the same variables that existed when it was first defined, even after those variables have "fallen out of scope" for the rest of the program.

Take a look at `closures_counters.rb`.

## Exercise - Closures

Write a method, `make_logger()` that...

1. Takes 2 arguments, a prefix and a filename
2. Returns a Proc which takes 1 argument (the message) and writes a log message to the filename which begins with the prefix, and the amount of log messages written to that file.

So you should be able to write this code:

```ruby
log_error = make_logger("ERROR", "app.log")
log_info = make_logger("INFO", "app.log")

log_error.call("Incorrect user password.")
log_info.call("User logged in.")
log_info.call("User posted a news update.")
```

Which would result in a file `app.log` with these contents:

```
ERROR (1): Incorrect user password.
INFO (1): User logged in.
INFO (2): User posted a news update.
```
