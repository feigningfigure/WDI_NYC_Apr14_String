
def add(input1, input2)
  puts input1 + input2
end

def sub(input1, input2)
  puts input1 - input2
end

def multi(input1, input2)
  puts input1 * input2
end

def div(input1, input2)
  puts input1 / input2
end

def exponent(input1, input2)
  puts input1 ** input2
end

def sqroot(input1)
  puts Math.sqrt(input1)
end


def calc_it
  puts "What operation would you like to perform: (a)ddition, (s)ubtraction, (m)ultiplication, (d)division, (e)xponent, (sq)uareroot, or (q)uit the calculator?"
  operation = gets.chomp
  if operation == "a"
    puts "What numbers would you like to add?"
    puts "First number: "
    input1 = gets.chomp
    puts "Second number: "
    input2 = gets.chomp
    print "Answer = "
    add(input1.to_i, input2.to_i)
    calc_it
  elsif operation == "s"
    puts "What numbers would you like to subtract?"
    puts "First number: "
    input1 = gets.chomp
    puts "Second number: "
    input2 = gets.chomp
    print "Answer = "
    sub(input1.to_i, input2.to_i)
    calc_it
  elsif operation == "m"
    puts "What numbers would you like to multiply?"
    puts "First number: "
    input1 = gets.chomp
    puts "Second number: "
    input2 = gets.chomp
    print "Answer = "
    multi(input1.to_i, input2.to_i)
    calc_it
  elsif operation == "d"
    puts "What numbers would you like to divide?"
    puts "First number: "
    input1 = gets.chomp
    puts "Second number: "
    input2 = gets.chomp
    print "Answer = "
    div(input1.to_i, input2.to_i)
    calc_it
  elsif operation == "e"
    puts "What numbers would you like to raise to each other?"
    puts "First number: "
    input1 = gets.chomp
    puts "Second number: "
    input2 = gets.chomp
    print "Answer = "
    exponent(input1.to_i, input2.to_i)
    calc_it
  elsif operation == "sq"
    puts "What number would you like to take the square root of?"
    input1 = gets.chomp
    print "Answer = "
    sqroot(input1.to_i)
    calc_it
  elsif operation == "q"
    puts "Goodbye!"
  end
end

calc_it
