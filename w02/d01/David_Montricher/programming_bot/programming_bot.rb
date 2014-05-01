puts "Do you have a test for that?"
test_input = gets.chomp.downcase
  if test_input == "yes"
  print "Does the test pass? "
  pass_input = gets.chomp.downcase
    if pass_input == yes
    print "Need to refactor?"
    refactor_input = gets.chomp.downcase
      if refactor_input == "yes"
      print "Refactor the code"
      elsif refactor_input == "no"
      print "Select a new feature to implement"
      else
      # go back to beginning?
      end
    elsif pass_input == "no"
    print "Write just enough code for the test to pass"
    else
    # go back to beginning?
    end
  elsif test_input == "no"
    puts "Write a test"
  else
    puts "Sorry, I didn't get that. Try again"
end
