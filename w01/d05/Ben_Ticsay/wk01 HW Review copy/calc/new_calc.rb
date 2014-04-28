# require_relative 'newcalc_helperfunctions.rb'


def add(num1, num2)
  puts num1 + num2
  end

  def subtract(num1, num2)
    puts num1 - num2
  end

  def multiply(num1, num2)
    puts num1 * num2
  end

  def divide(num1, num2)
    puts num1/num2
  end

  def exponent(num1, num2)
    puts num1 ** num2
  end

  def sq(num1)
    puts Math.sqrt(num1)
  end



  def begin_calc

    puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, (sq)uare root or (q)uit?"
    input = gets.chomp
    puts "enter your first number"
    num1 = gets.chomp.to_i
    if input != "sq"
    puts "enter your second number"
    num2 = gets.chomp.to_i
  end

    case
      when input == "a"
        add(num1, num2)
      when input == "s"
        subtract(num1, num2)
      when input == "m"
        multiply(num1, num2)
      when input == "d"
        divide(num1, num2)
      when input == "e"
        exponent(num1, num2)
      when input == "sq"
        sq(num1)
      when input == "q"
        kernel.exit
    end
  end

begin_calc