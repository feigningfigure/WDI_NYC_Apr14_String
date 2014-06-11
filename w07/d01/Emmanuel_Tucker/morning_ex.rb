# I decide to start with ruby because thats the language that i know better at the moment

# def multiple_of (number)
#      number != 23 ? self % number == 0 : zero?

#      end

# total = 0

# 0.upto(100
# 0).each do |i|
#      total += i if (i % 3 == 0 )

# end



class Multiples

  def multiples
    numbers = Array(1..999)
    multiples = Array.new
    for i in numbers
      if i%3 == 0 or i%5 == 0
        multiples.push(i)
      end
    end
    multiples
  end

  def sumMultiples(multiples)
    total = 0
    multiples.each { |i| total+= i }
    puts(total)
  end

end

multiples = Multiples.new
multiples.sumMultiples(multiples.multiples)


#strat
#googled ruby multiable of 3
#modulus


#google
#modulus


#


start = Time.now

total = 0
(1...1000).each do |x|
     if (x % 3 == 0 || x % 5 == 0)
          total += x
     end
end

puts total
stop =Time.now

puts (stop - start) * 1000
