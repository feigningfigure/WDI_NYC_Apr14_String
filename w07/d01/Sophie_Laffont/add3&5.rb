total = 0

(1...10).each do |i|
if (i%3 == 0|| i%5 ==0)
 total+=i
end
end
puts total
