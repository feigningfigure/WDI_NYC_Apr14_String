print "Which borough do you live?"
curr_boro = gets.chomp



def boroughs (curr_boro)

  if curr_boro == "queens"
   puts "Queens Rock"
  elsif curr_boro == "brooklyn"
   puts "Brooklyn poppin"
  elsif curr_boro == "staten island"
    puts "staten island chillin"
  elsif curr_boro == "manhattan"
    puts "manhattan is banging"
  elsif curr_boro == "bronx"
    puts "bronx is scary"
  else
    puts "Im sorry I didnt understand that"
  end
end

  boroughs (curr_boro)

