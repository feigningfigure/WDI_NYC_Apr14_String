fastest_runners = [
	"Joey Lightning",
	"Jimmy Molasses",
	"Stewie 'The Tree' Treeson"
]

#returns the total number of items in array
fastest_runners.length

#removes the last entry in the array
#string interpolation is happening
#note: this will not work with single-quote strings
puts "We just popped: #{fastest_runners.pop}"
p fastest_runners #will print without turning it into a string
#fastest_runners.pop will return Stewie and remove
# #{} means evaluate expression...this is string interpolation which is when you interrupt a string to put in a code
# double quote = special characters welcome and single quotes are meaningless so use double
# \ in front of #{} will make it meaningless

#length will return 2 and puts will turn it into a string and show us
puts fastest_runners.length

puts "We just shifted: #{fastest_runners.shift}"
#shift removes the first thing

#fastest_runners.push "Usain Bolt"
print "We just unshifted 'Usain Bolt'"
fastest_runners.unshift "Usain Bolt"
puts fastest_runners
#unshift adds something to the beginning