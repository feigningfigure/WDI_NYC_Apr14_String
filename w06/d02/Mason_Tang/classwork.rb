colors = ["mauve", "chartreuse", "seafoam"]

colors.each do |color|
  puts "I love #{color}!"
end


for color in colors
  puts "I love #{color}!"
end

x = 0
while x < colors.length
  puts "I love #{colors[x].upcase}!"
  x += 1
end

working = colors
working.length.times do
  puts "I love #{working.shift.upcase}!"
end






[1, 2, 3].each do |item|
    puts("Iterating over #{item}...")
end



1, 2, and 3
-integer literals
-objects
-items in the array

[1,2,3]

each
- a method call

|item|
-placeholder

item
- local variable

puts
-a method call
- kernel.each()

"iterating over #{items}..."
-string literal
-interpolated string

do |item| puts("Iterating over #{item}...") end
- Block





def my_each(array)
    for item in array
        yield(item)
    end
end

my_each(colors) do |color|
  puts "I love #{color.upcase}!"
end

def call_block_five_times(&block)
  block.call()
  block.call()
  block.call()
  block.call()
  block.call()
  block.call()
end

call_block_five_times do
  puts "I am in a block, wow."
end

def examine_the_block(&block)
  puts block.inspect
end

some_block = Proc.new do
  puts "A block"

examine_the_block(&some_block)
