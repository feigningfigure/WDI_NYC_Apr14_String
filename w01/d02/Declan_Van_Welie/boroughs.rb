def borough(your_borough)

  if your_borough == "brooklyn"
    puts "Fugheddaboudit!"
  elsif your_borough == "queens"
    puts "The Royal Treatment!"
  elsif your_borough == "manhattan"
    puts "If you can make it here, you can make it anywhere!"
  elsif your_borough == "staten island"
    puts "Don't dump on me (official motto)."
  else your_borough == "bronx"
    puts "Yield not to evil (official motto)."

  end
end

  puts "Which borough do you live in?"

  your_borough = gets.chomp.downcase

  borough(your_borough)
