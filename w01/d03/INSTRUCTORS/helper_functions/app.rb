require_relative 'helper_functions.rb'

def my_app
  x = 10
  ["green","red","blue"].each do |color|
    x += 1
    p [color,x]
  end
end

def sugary
  ["green","red","blue"].each { |c| puts c }
end

$matrix = [
          ["1a", "1b", "1c"],
          ["2a", "2b", "2c"],
          ["3a", "3b", "3c"]
        ]

def print_matrix
  $matrix.each do |rows|
    rows.each do |col|
      puts col
    end
  end
end

$bedroom = {
  :dresser => [
    "sock",
    "shirt",
    "batman costume"
  ]
}





