require 'faker'
require_relative 'person'

new_person_array = []
50.times {new_person_array << Person.new}

puts new_person_array.each { |person| person.to_s}


#NEEL Solution

#if i don't care what name, company, email, are, do you need to pass them into your class
