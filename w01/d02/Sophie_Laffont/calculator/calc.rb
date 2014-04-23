def get_user_choice

    print "Hello. I am a calculator. You can use me to add, substract, multiply,
    or divide numbers. So what would you like to do? Enter Q to quit."

    userRequest = gets.chomp.to_s

    print "enter a number"
    x = gets.chomp.to_i
    print "enter another"
    y = gets.chomp.to_i

# OTHER OPTION TO TEST
# while userRequest != "Q"
# userRequest == "G"
 #puts "Bye!"
#end

    if userRequest == "add"

        def add(num1, num2)
        return num1 + num2
    end
    puts add(x, y)

    elsif userRequest == "substract"

    def substract(num1, num2)
        return num1 - num2
    end
    puts substract(x, y)

    elsif userRequest == "multiply"
    def multiply(num1, num2)
        return num1 * num2
    end
    puts multiply(x, y)

    elsif userRequest == "divide"
    def divide(num1, num2)
        return num1 / num2
    end
else userRequest == "Q"
    def quit()
     puts "Goodbye!"
end

end

    get_user_choice



