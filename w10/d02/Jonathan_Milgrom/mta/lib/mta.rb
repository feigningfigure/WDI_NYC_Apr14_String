# $trains = {
#   :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
#   :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
#   :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
# }


class Mta

	TRAINS = { 
		:n_line => [:times_square, :"34th", :"28th", :"23rd", :union_square, :"8th"],
	    :l_line => [:"8th", :"6th", :union_square, :"3rd", :"1st"],
	    :six_line => [:grand_central, :"33rd", :"28th", :"23rd", :union_square, :astor_place]
	}

	INTERSECTIONS = {
		:union_square => [:n_line, :l_line, :six_line]
	}

	def initialize(start_line, start_stop, end_line, end_stop)
		# start_line = input_conversion(start_line)
		# start_stop = input_conversion(start_stop)
		# end_line = input_conversion(end_line)
		# end_stop = input_conversion(end_stop)
		@start = {
			:start_line => input_conversion(start_line), 
			:start_stop => input_conversion(start_stop) 
		}
		@end = {
			:end_line => input_conversion(end_line), 
			:end_stop => input_conversion(end_stop)
		}
	end


	def stops
		 if one_line?
		 	return single_line_stops(@start_line, @start_stop, @end_line, @end_stop) 
		 else
		 	return single_line_stops(@start_line, @start_stop, @start_line, :union_square) + single_line_stops(@end_line, :union_square, @end_line, @end_stop)
		 end
	end

	def one_line?
		@start_line == @end_line
	end
	
	def single_line_stops(stop_hash1, stop_hash2)
		(stop_conversion(line1, stop1) - stop_conversion(line2, stop2)).abs
	end

	def stop_conversion(stop_hash)
		Mta::TRAINS[stop_hash[:start_line].index(stop_hash[:start_stop])
	end


	def input_conversion(input)
		input.gsub(" ", "_").downcase.to_sym
	end
end

