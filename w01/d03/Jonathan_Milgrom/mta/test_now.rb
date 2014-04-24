test_hash = {
	:x => [1,2,3,4],
	:y => [2,3,4,5],
	:x => [3,4,5,6]
}

puts count = test_hash[:y].index(3) - test_hash[:y].index(5)