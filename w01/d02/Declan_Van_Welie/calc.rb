  def get_user_choice(choice)

    puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (quit)"
    choice = gets.chomp

    if choice == "a"
       add(num1,num2)
    elsif choice == "s"
      subtract
    elsif choice == "multiply"
      multiply
    elsif choice == "d"
      divide
    else choice == "quit"
      exit
  end

    def add(num1,num2)
        answer = num1 + num2
        puts "#{answer}"
    end

    def subtract(num1,num2)
        answer = num1 - num2
        puts "#{answer}"
    end

    def divide(num1,num2)
        answer = num1 % num2
        puts "#{answer}"
    end

    def multiply(num1,num2)
        answer = num1 * num2
        puts "#{answer}"
    end
  end

    #puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (quit)"
    #choice = gets.chomp
    puts "Please enter the first number in your operation"
    num1 = gets.chomp
    puts "Please enter the second number in your operation"
    num2 = gets.chomp
    get_user_choice(choice)
