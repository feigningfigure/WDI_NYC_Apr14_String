require_relative 'classes/person'

require 'faker'



array = []
100.times { array << Person.new }

# array << 100.times do |person|
#   person = Person.new
# end

puts array

