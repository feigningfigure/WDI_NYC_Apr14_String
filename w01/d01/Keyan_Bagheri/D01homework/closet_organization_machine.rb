bed = Bed.new
top_shelf = Shelf.new
middle_shelf = Shelf.new
bottom_shelf = Shelf.new

class Clean_Machine

	def initialize
		power on Clean_Machine
		puts "Machine says: 'Life Is Good'" #our machine is made by LG and could have some manufacturing errors
		machine_queue = []
		salvation_army_donation_box = ["that Christmas sweater aunt Brenda gave me"
	end

	def find_and_put_away(clothing_article)
		scan_for(clothing_article)
		move(clothing_article)
	end

	def scan_for(clothing_article)
		look_through_pile_of_clothes_on_bed
		find_one_singular(clothing_article)
		classify(clothing_article)
		machine_queue << clothing_article
	end

	def classify(clothing_article)
		return clothing_article_color
		return clothing_article_style
	end

	def fold(clothing_article)
		pick_up(clothing_article)
		neatly fold clothing_article
		clothing_article = folded clothing_article
	end

	def pick_up(clothing_article)
		reach for clothing_article
		grasp clothing_article
		you are now holding clothing_article
	end

	def move(clothing_article)
		unless machine_queue is empty
			clothing_article = machine_queue[-1] from bed #pick up one article
			fold(clothing_article)
			if clothing_article_color == green && clothing_article_style == shirt
				place clothing_article on top_shelf
			elsif clothing_article_color == blue && clothing_article_style == shirt
				place clothing_article on middle_shelf
			elsif clothing_article_style == pants
				place clothing_article on bottom_shelf
			else
				return
			end
		salvation_army_donation_box << machine_queue.pop()
		end
	end
end
				


