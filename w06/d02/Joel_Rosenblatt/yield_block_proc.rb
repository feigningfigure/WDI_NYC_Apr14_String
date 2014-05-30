colors = ["mauve", "chartreuse", "seafoam"]

def my_each(array)
  for item in array
    yield()
  end
end


my_each(colors) { |color| puts "I love #{color.upcase}!" }


