require 'mta_subway'



RSpec.describe Subway do
     let (:trip) {Subway.new}
     let (:n_line) {Subway.new(["Times Square", "34th", "28th", "23rd", "Union Square",  "8th"])}
     let (:l_line) {Subway.new(["8th", "6th", "Union Square", "3rd", "1st"])}
     let (:six_line) {Subway.new(["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"])}


it "should show  stops depending on current station" do
     result = trip.beginning
     expect(result).to be(:trip).each

end





# it "should show how many stops it take to get from one station to another"




# it "should show the all three stations interesting"




# it "should show that you have arrived at your destination"


end





