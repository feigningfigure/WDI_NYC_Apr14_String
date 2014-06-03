total = 0
0.upto(999).each do |number|
  total += number if (number % 3 == 0 || number % 5 == 0)
end
puts total


# - What language did you decide to work in first? Was the code you wrote in the first language useful when you rewrote your code in the second? Why and why not?
# - How did you break down the problem?
# - Did you use any resources other than your own brain?
# - When did you test?
# - Did you refactor your code?  If so, when: As you went along? After you had a solution that worked?  If not, why?
# - First language: Ruby. Yes, it was useful to write it in JS, because once you have the logic, you can easily translate it to the JS syntax.
# - I broke it down in two parts, finding the multiple numbers and keep adding them on a 'total' variable.
# - Yes, I googled 'multiples of 3 in ruby'
# - I tested right after creating the comparison operators.
# - No, I didn't refactor, I didn't have enough time.
