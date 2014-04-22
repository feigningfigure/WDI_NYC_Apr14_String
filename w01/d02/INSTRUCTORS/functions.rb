def sqrt(num)
  return false if num < 0
  x = Math.sqrt(num)
  x
end

def square(num)
  num*num
end

def double_of_string(word)
  return word+word if word.class == String
  "Not a string!"
end
