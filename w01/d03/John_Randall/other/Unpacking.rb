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



def search_in_room_for_thing(room, thing)
	unpack(room, thing, 0)
end


def unpack(thing_to_search_in, item_to_search_for, item_counter)
	if thing_to_search_in.class == Hash
		thing_to_search_in.each do |k,value|
			item_counter = item_counter + unpack(value, item_to_search_for, item_counter)
		end

	elsif thing_to_search_in.class == Array
		thing_to_search_in.each do |item|
			item_counter = item_counter + unpack(item, item_to_search_for, item_counter)
		end

	elsif thing_to_search_in.class == String
		individual_item = thing_to_search_in
		item_counter = item_counter + check_for_lost_thing(individual_item, item_to_search_for)

	else
		puts "Hashs, Arrays, and Strings only please"
		return 0
	end

	p item_counter
	return 0
end



def check_for_lost_thing(individual_item, item_to_search_for)
	if individual_item == item_to_search_for
		puts "check_for_lost_thing found some #{item_to_search_for}"
		return 1
	end
end


search_in_room_for_thing($bedroom, "socks")



