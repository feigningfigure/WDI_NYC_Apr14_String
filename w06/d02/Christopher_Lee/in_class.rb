def my_each (array)
   for item in array
      yield(item)
    end
end


my_each(colors) do |color|
puts "I love #{color.upcase}!"
end
