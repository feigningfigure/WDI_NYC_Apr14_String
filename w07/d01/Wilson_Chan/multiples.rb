def DisplayMultiples(multiplesOf, count)
  i = multiplesOf
  while i <= count
    if i % multiplesOf == 0
      puts i
    end
    i += 1
  end
end


# ANSWER
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

# ANSWER REFACTORED
def multiples
  (1..999).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end

# ANSWER alternative COMPLETE with Keri
start = TIME.now

total = 0

  (1..1000).each do |i|
    if (i % 3 == 0 || i % 5 == 0)
      total += x
  end
end

puts total

stop = Time.now

puts (stop -start) * 1000
