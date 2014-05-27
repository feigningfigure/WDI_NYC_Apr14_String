class Soldier
  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end
end

soldiers = []
soldiers << Soldier.new("Alvin", "York")
soldiers << Soldier.new("Nina", "Price")
soldiers << Soldier.new("Percy","Pinkerton")
soldiers << Soldier.new("Abigail","Brand")

# EACH : doesn't return what you did in the block
s_last_names = soldiers.each { |s| puts s.last_name }

# SELECT : returns an array of the object selected
s_last_names = soldiers.select { |s| s.last_name == "Price" }

# MAP : returns array of only last names
s_last_names = soldiers.map { |s| s.last_name }

# REDUCE : returns the longest last name from an array of last names
s_last_names.reduce do |first_word, second_word |
  if first_word.length > second_word.length
    first_word
  else
    second_word
  end
# You could also write the above in a less verbose way as:
# first_word.length > second_word.length ? first_word : second_word
end




















#### REDUCE ****
#### recommend for reading:  http://railspikes.com/2008/8/11/understanding-map-and-reduce
# http://www.potstuck.com/2011/07/25/map-if-in-ruby-and-an-introduction-to-rubys-inject/
# The real power of inject lies in it’s ability to build new objects
# while looking at every element in the caller individually. Since inject
# can draw values from any enumerable object it makes it an ideal method
# for many common uses such as filtering, grouping, summing and everything
# else related to building.
#### GROUPING
#### Grouping a list of words by the first letter of the word:

collection:  ["alpha", "bravo", "charlie", "bark", "almond"]
initial value:  {}
block or symbol-with-method to apply: everything between "do" and "end"

soldiers_all_lnames.reduce({}) do |my_hash, word|
  my_hash[word[0].to_sym] ||= []
  my_hash[word[0].to_sym] << word
  my_hash
end


# http://railspikes.com/2008/7/29/functional-loops-in-ruby-each-map-inject-select-and-for
# How to decide which to use?
# ----------------
# Desired Return Value                                Function
# New array with same number of values                map
# New array composed of part of the old array         select
# Single value (though this value can be an array)    reduce (inject)
# none                                                each
# ----------------



# This is useful in all manner of situations. Suppose, for example, you're
# reading some comma-separated values from a text file, and you wish to turn
# each row into a hash. The first line holds the column names. How do you read
# this file and turn it into an array of hashes?

# First, let's read the first line and zip it with the column indexes.
# "Zipping" two arrays will combine them. So, if you were
# to zip ['a', 'b', 'c'] with [1,2,3], you would get [ ['a',1], ['b',2], ['c',3] ].
# If you were to then flatten then to produce [ 'a', 1, 'b', 2, 'c', 3 ] and then
# splat it and pass it to Hash[ … ], you would get a hash equivalent to
# {:a => 1, :b => 2, :c => 3}. This sounds complicated, but it's not difficult
# once you start playing with it, and very powerful.

zipped_array = ['a', 'b', 'c'].zip([1,2,3])
flattened_array = zipped_array.flatten
# "splat" explodes the array and passes each argument to the Hash method, which takes key-value pairs
hashed_array = Hash[*flattened_array]
