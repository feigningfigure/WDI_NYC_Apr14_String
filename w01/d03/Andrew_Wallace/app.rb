requrie_relative 'help_functions.rb'

def my_app
	x = 10
	["green", "red", "blue"].each do |color|
		x += 1
		p [color,x]
	end
end

def sugary
	["green", "red", "blue"].each { |c| puts c }
end

$matrix = [
			["1a", "1b", "1c"]
			["2a", "2b", "2c"]
			["3a", "3b", "3c"]

		]

def print_matrix
	$matrix.each do |rows|
		rows.each do |col|
			puts col
		end
	end
end

# arbitrarily organized hash
$bedroom = {
	:dresser => [
		"socks",
		"shirt",
		"batman costume"

	],
	:bed => {
		:top_of => [
			"sheets",
			"socks"
			],
		:underneath => [
			"monster",
			"socks",
			"plastic bins"
		],
		:drawer => [
			"shoes",
			"sheets"
		]
	}
}

def find_socks
	$bedroom.each do |first_thing, possible_value|
		# pIf the possible_value is nil, that means the 'first thing'
		# is an array.  Therefore, we should check if it has socks in it.
		if possible_value == nil && first_thing.include? "socks"

		end
	end
end

find_socks