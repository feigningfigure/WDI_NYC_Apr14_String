(1...1000).select { |x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)

# OR this

cleared_multiples = []
for i in (1...1000)
  if i % 3 == 0 || i % 5 == 0
    cleared_multiples << i
  end
end

cleared_multiples.inject{|sum,x| sum + x }


#strategy
# my strategy:
# 1. Google 'ruby multiples of 3'
# 2. figure out modulo
# 3. stumble across problem where somebody has already done it very slickly using inject
# 4. translate the problem into my own clumsy syntax using a for loop since I know the same thing exists in javascript
# 5. solve the problem the exact same way in javascript with one minor difference: use a counter to store values instead of an array.
