require_relative 'classes/animal'
require_relative 'classes/person'
require_relative 'classes/shelter'
require_relative 'seed'

def titleize(str)
	str.split(" ").map(&:capitalize).join(" ")
end
