# I decide to start with ruby because thats the language that i know better at the moment

# def multiple_of (number)
#      number != 23 ? self % number == 0 : zero?

#      end

total = 0

0.upto(1000).each do |i|
     total += i if (i % 3 == 0 || i % 5 == 0)

end
