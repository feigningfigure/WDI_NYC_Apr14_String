def borough
  puts "What borough do you live in?"
  answer = gets.chomp.capitalize
  unless answer == ""
    puts "I knew that! You totally look like you live in #{answer}."
  else puts "Come on! Give me a answer."
    borough
  end
end

borough
