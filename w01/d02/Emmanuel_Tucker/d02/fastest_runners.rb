fastest_runners = [
  "Joey Lightning",
  "Jimmy Molasses",
  "Stewie 'The Tree' Treeson"
]
p fastest_runners
# returns the total number of items in array
fastest_runners.length

# string interpolation is happening below
# note: this will not work with single-quote strings
puts "We just popped: #{fastest_runners.pop}"
p fastest_runners
puts fastest_runners.length

puts "We just shifted:"
fastest_runners.shift
p fastest_runners

# fastest_runners.push "Usain Bolt"
print "We just unshifted: "
fastest_runners.unshift "Usain Bolt"
print "\n"
p fastest_runners

print "We just pushed:"
fastest_runners.push "Andrew Wallace (it's okay, he told us to)"
print "\n"
p fastest_runners
