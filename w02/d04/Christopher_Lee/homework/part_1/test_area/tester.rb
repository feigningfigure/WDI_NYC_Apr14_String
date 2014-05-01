puts "What would you like to add?"
addition = gets.chomp
puts "Opening the file..."
target = File.open("sample.txt", 'a')
target.puts addition
target.close
target2 = File.open("sample.txt", 'r')
puts target2.read()
target2.close
