fastest_runners = [
	"Joey Lightning",
	"Jimmy Molasses",
	"Stewie 'The Tree' Treeson"
]

puts fastest_runners


# returns the total number of items in 
fastest_runners.length

# string interpolation happening below
# does not work with single quotes
puts "We just popped: #{fastest_runners.pop}"

puts "We just shifted:"
fastest_runners.shift
p fastest_runners

# fastest_runners.push "Usain Bolt"
fastest_runners.unshift "Usain Bolt"

puts fastest_runners.length

puts fastest_runners


# shift, unshift, pop, push