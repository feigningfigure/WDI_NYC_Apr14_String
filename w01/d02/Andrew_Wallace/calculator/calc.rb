def get_user_choice
  print 'enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide'
  operation = gets.chomp.downcase
end

  case
  when operation == "A"
    print "Okay, let's add some numbers!"
    add()
  when operation == "S"
    print "Okay, let's do some subtraction!"
    subtract()
  when operation == "M"
    print "Okay, let's multiply some numbers!"
    multiply()
  when operation == "D"
    print "Okay, let's divide some numbers!"
    divide()
  else
    puts "Please enter 'A', 'S', 'M', or 'D'"
  end
end

def add(num1,num2)
  num1.to_i+num2.to_i
end

def subtract(num1,num2)
  num1.to_i - num2.to_i
end

def divide(num1,num2)
  if num2 == 0
    return 'Infinity'
  else
  num1.to_i / num2.to_i
end
end

def multiply(num1,num2)
  num1.to_i * num2.to_i
end

