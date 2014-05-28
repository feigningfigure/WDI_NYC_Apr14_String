# Objectives

* **Content**: Describe why Ruby has blocks and why methods cannot fulfill the same purpose.
  * Explain why it's worth the effort to write idiomatic code.
  * Explain why Ruby's "eager" method invocation syntax precludes it from having first class functions.
* **Applied**: Implement your own `my_each()` method.
  * Use `yield()` to pass execution to an implied block argument.
  * Use `&` to denote an explicit block argument, and invoke it with `Proc.call()`.
* **Synthesis**: Refactor some logic branching code to have a data-driven `Proc` approach.

---

# Outline

Let's talk about "idiomatic Ruby" for a second.

## Exercise 1 - Idiomatic Loops

How many ways can we start with this code:

```ruby
colors = ["mauve", "chartreuse", "seafoam"]
```

And end up with this output?:

```
I love MAUVE!
I love CHARTREUSE!
I love SEAFOAM!
```

Which is the most idiomatic, or "Ruby-ish"? Why?


## Exercise 2 - Blocks

* What is `each()`?
  * Input
  * Return Value
  * Side Effects


## Exercise 2.5 - Code Anatomy

```ruby
[1, 2, 3].each do |item|
    puts("Iterating over #{item}...")
end
```

What is the anatomy of the above code?

## The anatomy of a block

* **Delimiter**
  * `{` and `}` are for one-liners
  * `do` and `end` must be on separate lines
* **Placeholder**
* **Code**


## Writing our own block functions

[`Enumerable.select()`](http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-select) is similar to `map()`, but it returns an array containing all items for which the provided block returns a truthy value.

Say I wanted only the colors that have an "s" in them:

```ruby
s_colors = colors.select { |color| color.include?("s") }
puts s_colors.inspect #=> ["chartreuse", "seafoam"]
```

The block evaluates to `true` or `false` depending on whether the word has an "s" in it:

```ruby
{ |color| color.include?("s") }
```

Now I'll write my own `my_select()` method:

```ruby
def my_select(array)
    new_array = []
    for item in array
        if yield(item)
            new_array.push(item)
        end
    end

    return new_array
end

s_colors = my_select(colors) { |color| color.include?("s") }
puts s_colors.inspect #=> ["chartreuse", "seafoam"]
```

## Exercise 3 - my_each() with yield()

Write your own `my_each()` method such that this code:

```ruby
my_each(colors) { |color| puts "I love #{color.upcase}!" }
```

Returns the exact same output as the original `Enumerable.each()`:

```
I love MAUVE!
I love CHARTREUSE!
I love SEAFOAM!
```

## Procs

A `Proc` is an anonymous function.

It's like a block preserved in amber.

Blocks are a feature of Ruby's syntax; `Proc`s are instances of the "`Proc`", class and you interact with them just like you would any other object; they do not require any special syntax.

* `Proc`s are invoked with the `call()` method, **NOT** by writing their name!
* `&` changes a block to a `Proc` and vice-versa.

`my_select()` can be rewritten with a block argument instead of `yield()`:

```ruby
def my_select(array, &block)
    new_array = []
    for item in array
        if block.call(item)
            new_array.push(item)
        end
    end

    return new_array
end

s_colors = my_select(colors) { |color| color.include?("s") }
puts s_colors.inspect #=> ["chartreuse", "seafoam"]
```

## Exercise 4 - my_each() with a block argument

Rewrite `my_each()` to use a block argument instead of `yield()`.

---

# Synthesis

Our old procedural calculator code looked something like this:

```ruby
class Calculator

    def run(operator, num1, num2)
        if operator == "add"
            return num1 + num2
        elsif operator == "subtract"
            return num1 - num2
        end
    end

end

calc = Calculator.new
puts calc.run("add", 5, 10) #=> 15
```

The use of an `if` statement locks our calculator permanently into the two operators we originally wrote into it.

## Exercise 5 - SmartCalculator

Let's write a `SmartCalculator` class that can be taught new operators. Starter code:

```ruby
class SmartCalculator

  def initialize()
    @operators = {}
  end

end
```

Implement `SmartCalculator` such that this code:

```ruby
calc = SmartCalculator.new
calc.teach("add") { |num1, num2| num1 + num2 }
calc.teach("divide") { |num1, num2| num1 / num2 }
puts calc.run("add", 5, 10) #=> 15
puts calc.run("divide", 1000, 10) #=> 100
```

Results in this output:

```
15
100
```
