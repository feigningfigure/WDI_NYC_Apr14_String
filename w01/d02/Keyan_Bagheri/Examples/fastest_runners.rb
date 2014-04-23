fastest_runners = [
	"Joey Lighting",
	"Jimmy Molasses",
	"Stewie 'The Tree' Treeson"
]


fastest_runners.length

puts "We just popped #{fastest_runners.pop}" #scoped commands still WORK
puts fastest_runners
fastest_runners.length

print "We just shifted: "
fastest_runners.shift
puts fastest_runners

print "We just unshifted: "
fastest_runners.unshift "Ussain Bolt" #adds to the beginning
puts fastest_runners
