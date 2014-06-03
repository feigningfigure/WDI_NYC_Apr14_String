# list all the whole numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.

# find the sum of all the multiples of 3 or 5 below 1000.

start = Time.now

total = 0

(1...1000).each do |x|
  if (x % 3 == 0 || x % 5 == 0)
    total += x
  end
end

puts total

stop = Time.now

puts (stop - start) * 1000