
require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => [Times Square, 34th St, 28th St, 23rd St, Union Square, 8th St]
  :l_line => [8th Ave, 6th St, Union Square, 3rd Ave, 1st Ave]
  :six_line => [Grand Central, 33rd St, 28th St, 23rd St, Union Square, Astor Place]
}

print "Count stops on your subway trip! Please enter your first stop: "
stop1 = gets.chomp

print "What's your last stop? "
stop2 = gets.chomp

function ($trains)
  if transfer needed
    leg1 = array pos stop2.+1 - array pos Union Square.+1
  else transfer not needed
    leg1 = array pos stop2.+1 - array pos stop2.+1
  end
end

print "Your trip will take leg1 stops"
