ruby colors = ["mauve", "chartreuse", "seafoam"]

#idiomatic ruby
colors.each do |color|
  puts "I love #{color.upcase}!"
end

#idiomatic ruby
colors.each { |color| puts "I love #{{color.upcase}}!"}


x = 0
while x < colors.length
  puts "I love #{color.upcase}!"
  x+=1
end


for color in colors
  puts "I love #{color.upcase}"
end

puts "I love #{color[0]}!"
puts "I love #{color[1]}!"
puts "I love #{color[2]}!"

puts "I love #{color.select(0)}!"
puts "I love #{color.select(1)}!"
puts "I love #{color.select(2)}!""
