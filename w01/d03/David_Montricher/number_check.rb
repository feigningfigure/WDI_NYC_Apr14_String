# Check every number from 1 through 200.
# If number is even, print number on terminal.
# If it's odd, print word "odd" on the terminal.

for num in (1..200)
  if num % 2 == 0
    puts "#{num} even number"
  elsif num % 2 == 1
    puts "#{num} odd number"
  end
end
