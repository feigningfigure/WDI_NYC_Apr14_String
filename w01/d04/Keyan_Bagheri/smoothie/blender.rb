class Blender

	attr_accessor :is_on, :ingredients, :chopped_ingredients, :ingredients1

	def initialize
		@is_on = false
		@ingredients = []
		@ingredients1 = []
		@chopped_ingredients = []
	end

	def blender_is_on?
		if self.is_on == false
			alert_power_required = "In order to operate you must first turn on the blender\n\n"
			puts alert_power_required
			false
		else
			true
		end
	end

	def turn_on_blender
		@is_on = true
		alert_power_on = "The blender is now operational\n\n"
		puts alert_power_on
		system "say #{alert_power_on}"
	end

	def turn_off_blender
		if @is_on == true
			@is_on = false
			alert_power_down = "The blender is powering down\n\n"
			puts alert_power_down
			system "say #{alert_power_down}"
			puts "Goodbye"
			system "say Good"
			system "say Bye"
			puts
		end
	end

	def chop_up_ingredient(ingredient_name)
		ingredient_name = ingredient_name.gsub(' ','')
		letter_array = Array.new
		letter_array = ingredient_name.split('')
	end

	def add(ingredient)
		if @ingredients1.include?(ingredient) || ingredient == ""
			return
		else
			@ingredients << color_the_ingredient(color_match(ingredient),ingredient.upcase)
			@ingredients1 << ingredient.upcase
			choppy = chop_up_ingredient(ingredient.upcase)
			@chopped_ingredients << choppy.map { |letter| color_the_ingredient(color_match(ingredient),letter)}
		end
	end

	def analyze_ingredients
		if @is_on == true && @ingredients.length > 4
			alert_analyzing =  "Analyzing ingredients\n\n"
			puts alert_analyzing
			system "say #{alert_analyzing}"
			puts
			sleep(1.0/2.0)
			puts "Ingredients:"
			sleep(1.0/2.0)
			puts	
			puts "#{self.ingredients[0]}"
			system "say 1.. #{self.ingredients1[0]}.."
			puts "#{self.ingredients[1]}"
			system "say 2.. #{self.ingredients1[1]}.."
			puts "#{self.ingredients[2]}"
			system "say 3.. Is that a hint of #{self.ingredients1[2]}?."
			system "say 4.. What is that?"
			puts "#{self.ingredients[3]}"
			system "say #{self.ingredients1[3]}?"
			system "say fa You know what. I am just going to start now.\n\n"
			puts @ingredients[4..-1]
			puts
		else
			alert_analyzing =  "Analyzing ingredients\n\n"
			puts alert_analyzing
			system "say #{alert_analyzing}"
			puts
			sleep(1.0/2.0)
			puts "Ingredients:"
			sleep(1.0/2.0)
			puts
			puts @ingredients
			system "say #{@ingredients1}"
			puts
		end
	end

	def has_ingredients?
		if @ingredients.length < 1
			alert_insert = "Please insert ingredients and press start button when ready\n\n"
			puts alert_insert
			system "say #{alert_insert}"
			false
		else
			true
		end
	end

	def start_button
		if blender_is_on? == false
		elsif has_ingredients? == false
		else
			alert_activate = "One minute please\n\n"
			puts alert_activate
			system "say #{alert_activate}"
			sleep(1.0/2.0)
			blend
		end
	end

	def poor_into_cup(smoothie)
		until smoothie.length >= 214
			smoothie += smoothie
		end
		blended = smoothie.flatten.shuffle
		blended1 = blended[0..19].join
		blended2 = blended[20..39].join
		blended3 = blended[40..59].join
		blended4 = blended[60..79].join
		blended5 = blended[80..99].join
		blended6 = blended[100..119].join
		blended7 = blended[120..139].join
		blended8 = blended[140..159].join
		blended9 = blended[160..179].join
		blended10 = blended[180..199].join
		blended11 = blended[200..211].join
		puts "            #{blended[110..114].join}"
		puts "            #{blended[212].to_s}"
		puts "            #{blended[213].to_s}"
		puts "            #{blended[42].to_s}"
		puts "         #{blended[100..107].join}"
		puts "       #{blended11}"
		puts "     #{blended[50..65].join}"
		puts "    #{blended[110..127].join}"
		puts "   #{blended5}"
		puts "  #{blended[170..191].join}"
		puts "  #{blended[130..151].join}"
		puts "   #{blended1}"
		puts "   #{blended2}"
		puts "   #{blended3}"
		puts "   #{blended4}"
		puts "   #{blended5}"
		puts "   #{blended6}"
		puts "   #{blended7}"
		puts "   #{blended8}"
		puts "   #{blended9}"
		puts "   #{blended10}"
		puts
	end



	def blend
		analyze_ingredients
		alert_begin = "Now blending\n\n"
		puts alert_begin
		system "say #{alert_begin}"
		system "say wurwurwurrwurwurwurwurrwurwur"
		system "say erum"
		system "say wrrwurwurrwurwurwurwurrwurwurwur"
		alert_close = "Almost finished\n\n"
		puts alert_close
		system "say #{alert_close}"
		system "say wurwurwurrwurwurwurwurwurwurboop"
		puts
		sleep(1.0/2.0)
		alert_done = "Heres your freaking smoothie!\n\n"
		puts alert_done
		system "say #{alert_done}"
		poor_into_cup(@chopped_ingredients)
		sleep(1)
	end
end

