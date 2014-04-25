array =["1", "+", "3"]
array * " " => "1 + 3"
eval(array * " ") => 4

def run
  puts "inputs stuff"

def input_chars(full_array)
  puts "input stuff"
  input = gets.chomp.to_s
  if input == "="
    calculations(input_array)
  else


  input_array.push(input)
