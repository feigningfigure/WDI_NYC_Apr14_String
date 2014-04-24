
def add(input1, input2)
  puts input1.to_i+input2.to_i
end

def sub(input1, input2)
  puts input1.to_i-input2.to_i
end

def multi(input1, input2)
  puts input1.to_i*input2.to_i
end

def div(input1, input2)
  puts input1.to_i/input2.to_i
end


def calc_it
  puts "What operation would you like to perform: (a)ddition, (s)ubtraction, (m)ultiplication, (d)division or (q)uit the calculator?"
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
  elsif moperation == "s"
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
    div(input1.to_i, input.to_i)
    calc_it
  elsif operation == "q"

    puts "Goodbye!"
  end
end

calc_it

