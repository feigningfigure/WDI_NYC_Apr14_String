colors = ["mauve", "chartreuse", "seafoam"]

colors.each { |color| puts color }

# Exercise 3 on Github w06d03
# I love MAUVE!
# I love CHARTREUSE!
# I love SEAFOAM!

my_each(colors) { |color| puts "I love #{color.upcase}!" }

my_each(colors)
  new_colors = []
  for item in array
    if yield(item)
      new_colors.push(item)
    end
  end
  return new_colors
end

includes
