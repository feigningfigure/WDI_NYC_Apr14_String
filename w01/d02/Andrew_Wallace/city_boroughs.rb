def borough_living()
  puts "What borough do you live in?"
  borough = gets.chomp.downcase
  case
  when borough == "manhattan"
    print "Sorry you can't afford to eat out anymore. :("
  when borough == "brooklyn"
    print "Cool!  You every see 'Requiem for a Dream'?"
  when borough == "bronx"
    print "Traffic must be bad during Yankees games."
  when borough == "queens"
    print "I've been told there are great places to eat around there."
  when borough == "staten island"
    print "Depending where this either sucks or rocks."
  end
else
  print "That isn't a borough.  Probably some place in Jersey."
end


  borough_living()
