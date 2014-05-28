def example(n)
    puts
    puts "=== EXAMPLE #{n} ==="
    puts
end


example 1

colors = ["mauve", "chartreuse", "seafoam"]

colors.each do |color|
    puts "I love #{color.upcase}!"
end


example 2

colors.each_with_index do |color, x|
    puts "I love #{color.upcase} (#{x})!"
end


example 3

colors.each { |color| puts "I love #{color.upcase}!" }


example 4

x = 0
while x < colors.length
    puts "I love #{colors[x].upcase}, which is color number #{x}!"
    x += 1
end


example 5

for color in colors
    puts "I love #{color.upcase}!"
end


example 6

# working = colors
# working.length.times do
#     puts "I love #{working.shift.upcase}!"
# end


example 7

for num in (0...colors.length)
    puts "I love #{colors[num].upcase}!"
end


example 8

[1, 2, 3].each() do |item|
    puts("Iterating over #{item}...")
end


example 9

def one
    puts "One!"
end

def two
    puts "Two!"
end

def aardvark
    puts "Aardvark!"
end

aardvark
two
one


example 10

data = [1, 2, 3]

def iterate_over(item)
    puts("Iterating over #{item}...")
end

data.each do |item|
    iterate_over(item)
end


example 11

s_colors = colors.select do |color|
    puts "Does #{color} include 's'?"
    puts color.include?("s")
    color.include?("s")
end

puts s_colors.inspect #=> ["chartreuse", "seafoam"]


example 12

def my_select(array)
    new_array = []

    for item in array
        if yield(item)
            new_array.push(item)
        end
    end

    return new_array
end

s_colors = my_select(colors) do |color|
    color.include?("s")
end

puts s_colors.inspect #=> ["chartreuse", "seafoam"]


example 13

def my_select_explicit(array, &block)
    new_array = []

    for item in array
        if block.call(item)
            new_array.push(item)
        end
    end

    return new_array
end

includes_s_code = Proc.new do |color|
    color.include?("s")
end

s_colors = my_select(colors, &includes_s_code)

puts s_colors.inspect #=> ["chartreuse", "seafoam"]


example 14

def my_each(array)
    for item in array
        yield(item)
    end
end

my_each(colors) do |color|
    puts "I love #{color.upcase}!"
end


example 15

def call_block_five_times
    yield
    yield
    yield
    yield
    yield
end

call_block_five_times do
    puts "I am in a block, wow."
end


example 16

def examine_the_block(normal_argument, &block)
    puts "Normal Arg:", normal_argument.inspect
    puts "Block Arg:", block.inspect
end

some_block = Proc.new do
    puts "A block"
end

examine_the_block(nil) do
    puts "A block"
end


example 17

def hello
    puts "Hello, world!"
end

def call_five_times(some_function)
    some_function.call()
    some_function.call()
    some_function.call()
    some_function.call()
    some_function.call()
end

hello_proc = method(:hello)

call_five_times(hello_proc)



example 18

def each_pair(array)
    x = 0
    while x < array.length - 1
        yield(array[x], array[x + 1])
        x += 2
    end
end

friends = ["Jack", "Jane", "Mike", "Tyler", "Larry", "Henry"]

friends.shuffle()

each_pair(friends) do |a, b|
    puts "#{a} and #{b} are buddies."
end







