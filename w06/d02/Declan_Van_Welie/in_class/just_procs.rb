add = Proc.new do |a, b|
    a + b
end

multiply = Proc.new do |a, b|
    a * b
end

def divide(a, b)
    a / b
end

puts add.inspect

puts add.call(10, 50)

puts divide(10, 5)

other_add = add
puts other_add.call(50, 50)

asparagus = add
puts asparagus.call(50, 500)

maxs_name = "Maximilian Cantor"
whatever = maxs_name
puts maxs_name
puts whatever
