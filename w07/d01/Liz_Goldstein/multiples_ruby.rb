def multiple(num)
  i = 1
  threes = []
  fives = []
  while i < num
    if i % 3 == 0
      threes << i
    end
    if i % 5 == 0
      fives << i
    end
     i += 1
   end
a = threes.inject{|sum,x| sum + x }
b = fives.inject{|sum,x| sum + x }
puts a + b
end

multiple(1000)
