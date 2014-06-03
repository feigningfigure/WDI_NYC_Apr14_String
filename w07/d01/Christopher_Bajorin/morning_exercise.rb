maxNum = 1000
multiplesArray = []

def find_multiples(number)
  x = 0
  multiples_array = []
  while x < number do
    if x % 3 == 0 || x % 5 == 0
      multiples_array.push(x)
    end
    x += 1
  end
  sum = 0
  multiples_array.each do |num|
    sum += num
  end
  puts sum
end

def natural?(num)
  if num > 0 && num.is_a?(Integer)
    return true
  else
    return false
  end
end
