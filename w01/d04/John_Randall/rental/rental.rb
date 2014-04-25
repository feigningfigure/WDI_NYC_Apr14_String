				#### Noteworthy coments and questions are on the right side.


class Building
	
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments, :art

	def initialize(address = nil, style = nil, has_doorman = nil, is_walkup = nil, num_floors = nil, apartments = [nil], art = nil)

		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = apartments
		@art = art
	end


	def show_building()
		puts ""
		puts "*******#{@address}********".center(140)
		puts ""
		puts @art
		puts ""
		puts ""
	end

	def to_s
		puts "showinng building information".center(140)
																									# runs all permutations on #@address @style @has_doorman @is_walkup @num_floors @apartments @art
																									# Copy is maximized for potential ocupant interest; ie: Don't advertise that there is no doorman, but advertise if there is a doorman.
																			
																									# ToDo: Nest these permutations sensivly for efficiency at runtime
		if !@address
			puts "We don't have an address for this building yet, please check again later."
		
		elsif @address && !@style && !@has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "This buiding is located at #{@address}"
		elsif @address && @style && !@has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "This buiding, located #{@address}, was built in a beautiful #{@style} style."
		elsif @address && @style && @has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "This doorman buiding, located at #{@address}, was built in a beautiful #{@style} style."
		elsif @address && @style && @has_doorman && @is_walkup == false && !@num_floors && !@apartments
			puts "This elevator building has a doorman. It is located #{@address} and was built in a beautiful #{@style} style."
		elsif @address && @style && @has_doorman && @is_walkup == false && !@num_floors && !@apartments
			puts "This elevator building has a doorman. It is located #{@address} and was built in a beautiful #{@style} style."
		elsif @address && @style && @has_doorman && @is_walkup == false && @num_floors && !@apartments
			puts "This #{@num_floors} floor elevator building has a doorman. It is located #{@address} and was built in a beautiful #{@style} style."
		elsif @address && @style && @has_doorman && @is_walkup == false && @num_floors && @apartments
			puts "This #{@num_floors} floor elevator building contains #{apartments} units, has a doorman. It is located #{address} and was built in a beautiful #{@style} style."
		
		elsif @address && @style && !@has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "This buiding, located #{address}, was built in a beautiful #{@style} style."
		 
		elsif @address && !@style && @has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "#{@address} is a doorman buiding."
		
		elsif @address && !@style && @has_doorman && @is_walkup != false && !@num_floors && !@apartments
			puts "#{@address} is a doorman buiding."
		elsif @address && !@style && @has_doorman && @is_walkup == false && !@num_floors && !@apartments
			puts "#{@address} is a elevator buiding with a doorman."
		elsif false
			### etc, etc. finish this.
		else
			puts "ERROR in building.to_s (or maybe purmutations aren't finished yet"
		end

		if @art
			show_building()
		end


		####### These were other attempts at generating copy

		# if @apartments.length >0																													#QUESTION: Why wouldn't this compute. I need to unerstand Nil better
		# 	# num_apartments_string = "#{@num_apartments.length} apartments and "
		# else 
		# 	# num_apartments_string = nil
		# end
		# if @has_doorman && @is_walkup
		# 	# print "It features #{num_apartments_string}a doorman."
		# elsif @has_doorman && !@is_walkup
		# 	# print "It features a doorman, #{num_apartments_string}and an elevator"
		# elsif !@has_doorman && !is_walkup
		# 	# print "It features #{num_apartments_string}an elevator."
		# end
	end

end

class Apartment

	attr_accessor :price, :is_occupied, :square_footage, :num_beds, :num_baths, :renters

	def initialize(price = nil, is_occupied = nil, square_footage = nil, num_beds = nil, num_baths = nil, renters = [])
		@price = price
		@is_occupied = is_occupied
		@square_footage = square_footage
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = renters
	end

	def to_s
		"Apartment001 is cozy"
	end

	

	#### Methods For rental units


	# Psudo Code-----------
	# def rent_apartment(renter, renter*, renter*, renter*)
	# 	# if @is_rental?
	# 		@renters = [renter*]
	# 	# else
	# 	# 	puts "Cannot rent aparement; not a rental unit."
	# 	# end
	# end

	def evict_tenant
		#if @is_rental?
	end

	def clean_apartment
		#if @is_rental?
	end

	def amortize_costs
		#if @is_rental?
	end
		
	def sum_tax_related_expenses
		#Psudo code --------------
		#if @is_rental?
		# 	# calculate expenses
		# 	# return expenses
		# else
		# 	puts "#{Apartment} is not a rental unit; there are no deductable expenses."
		# end
	end	
		
end


class Person

	attr_accessor :name, :age, :gender, :apartment

	def initialize(name = nil, age = nil, gender = nil, name_for_new_apartment_obj=nil)										#Fighting the prompt: Apartments won't have unique names - should really pass building AND apartment
		@name = name
		@age = age
		@gender = gender
		@apartment = Apartment.new("name_for_new_apartment_obj")																#QUESTION: If Nil gets passed, does this construct anything?
	end


	def to_s
		if !@name
			puts "This person doesn't have a name. Please enter one."

		elsif !age && @gender && @apartment
			puts "#{name} is a lovely #{gender} who lives in #{@apartment}."
		elsif !age && !@gender && @apartment
			puts "#{name} lives in #{@apartment}."
		elsif !age && !@apartment
			puts "#{name} is lovely."

		elsif @age && @age < 13																													## C.O.P.A Compliance
			puts "No information available about this person. Please talk to data manager."
			
		elsif @age && @age > 13 && @gender	&& @aparement																						#COOL NIL HACK hack. If the < comparitor came first, could return an error if age is nil						
			puts "#{name} is a lovely #{@age} year old #{gender} who lives in #{@apartment}"
		elsif @age && @age > 13 && @gender && !@aparement	
			puts "#{name} is a lovely #{@age} year old #{gender}."
		elsif  @age && @age > 13 && !@gender && @aparement	
			puts "#{name} is a lovely #{@age} year old who lives in #{@apartment}"
		elsif  @age && @age > 13 && !@gender && !@aparement
			puts "#{name} is a lovely #{@age} year old."
		else
			puts "ERROR: Something is wrong with the Person.to_s method"
		end
			
	end
end






building001 = Building.new()
apartment001 = Apartment.new()


person001 = Person.new()
person002 = Person.new("Max", 3, "male", nil)
person003 = Person.new("John", 33, "male", "Apartment001")


#							:address, 			:style, 				:has_doorman, :is_walkup, :num_floors, :apartments, :art                 		#ToDo: arguments list is unruly, consider passing hash instead.
building002 = Building.new("175 Fifth Avenue", "Renaissance Skyscraper", true, 			false, 		21, 			nil, "

+???++++++?+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??++??????+++?++++++++?+??????????????????????????????????????+OO8888O8888OOO888
++???++???????????????????????+++?????????????+++++++??????????+???????????????????++?+++???????????????????????????????????????????????????+7OOOOO8O8888OOOOOOO
?+???+++++++++++++++??+++++++++++++++++++++??+++++???+++++++++++++++++++++++++++++?++???????????????????????????+???????????????????????????$OOOOO8888O888OOOOOO
?++++++???????????+??????++?????????+?++++++????????????+?????????+???????????++?++++++++??????????????????????????????????????????????????OOOOO888888O8888888OO
????+??+++++++++++?+++??+++???++++++++++++++++++???++++++++++++++++++++++++++++++++++?+++??++??++++?++???+++++++????????????????????????+?OOOOOO88888OO8DDD88888
?+??+++++++++++++++++??++++++++++++?++++++++++++++?++++++++?++?++++++++++++++++++++?+++++++???++++???++++?++???????????????+?????????????OOOOOOO88888D888DDDDDD8
+++?+++++++++++++++++++++++++++++++?++++++++++++++++++++++++?++++?++++?++??++++++++?++?+++?+???+++??????++?+++++???????????+???+???????7OOOOOO8O888DDD8888D8DDDD
?+??+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?++++++++?+++++++++++++++++++++??????????++????????++ZOOOOOOOOO88DDDOO88D8888DD
++??++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?+++++++++++++++++++++++++++++++++++++++++++??????????+ZOOOOOOOO888DD8OD88O8DDDD88
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?++++++++++++++++++++++++???IOOOOOOOO88ODDD88D8O8OOOOOOO8
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?++?+++++?++?++????+++7OOOOOOO8O88DD88DDO8O888888OOO
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??+++++++++?+++++++++++++++++++++++++++++???++??+??$OOOOOOOOO88DDD8D8O88888DDDD888
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?++++++++++++++++++++++++++++++++++++++++++++++?++++?+?$OOOOOOOO88DDD88DOO8D8O8OOZOOO8D
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?++++++++++++++++++++++++++++++++++++++++???++??OOOOOOOOO888D88DDO88DOO88O8O88OOO
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??+?+888OOOOOO88D8D8D8O8DDO8O888DDD8O88
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?$8D8OOOOO888DD8DDO88DO88DD88OOOOO8DD
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??O888OOOOO88DDDO8DO8DDO88D88O8O888OOOO
++++++++++++++++++++++++++++++++++++++++++++++?++++++?++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??O888OOOOO88DDDOD88ODDOO8DOO8O88DD88888
+++++++++++++++++++++++++++++++++++++++++++++7III++++I777??++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++O88OOOOO88DDDO8DOODDO88N8O88N88OOOO8DND
++++++++++++++++++++++++++++++++++++++++++?II~,,~=.~~~,=+77$?+++++++++++++++++++++++++++++++++++++++++++++++++++++++?++I8D8OOOOOO8D88OD8O88DO88DOO8DDOO8O88OOOOO
+++++++++++++++++++++++++++++++++++++++++?I?,:.+:=,~=?:?++~777++++++++++++++++++++++++++++++++++++++++++++++++++++++?+?888OOOOOOODD88D8OOD888DDOO8D8OOO88D888888
+++++++++++++++++++++++++++++++++++++++++7=~?7777777777$$?,?+I7$I?+++++++++++++++++++++++++++++++++++++++++++++++++++++$OOOOO8888DOD8OODDOODDOO8D8O8OD888OO8DDDD
++++++++++++++++++++++++++++++++++++++++?I77I.:+II777?++I$7$~?7+7$I?+++++++++++++++++++++++++++++++++++++++++++++++++++$OOOO888888DOOOD8OO8D8O8DOO88N8O88OOOOOOO
++++++++++++++++++++++++++++++++++++++++II?=7$$$$$$$$Z$$$$II$$I+==I7I+?++++++++++++++++++++++++++++++++++++++++++++++++7OOO8OD88ODOO8NOOOD8888D88ODDOO888888888O
+++++++++++++++++++++++++++++++++++++++7I77$$$$777777$$ZZOZZZII$7I???~I7I++++++++++++++++++++++++++++++++++++++++++++++7O8OD8DOD888DOO88DOO8D8O8DDOOO8DOOO8DDDD8
++++++++++++++++++++++++++++++++++++++?I7$$$7II?IIIIIII7$Z$$Z$$$I$77+:?7II?++++++++++++++++++++++++++++++++++++++++++++IOOD888DOO8DOO8D8OO8DOO8D8O88DDO8OZZZOZO8
++++++++++++++++++++++++++++++++++++++I7$Z$IIII7$7$77$$$77777$ZZ$$II$7=:=II7+?+++++++++++++++++++++++++++++++++++++++++IOD888DOO88OO8DOOOD88O8D8O8DDOO88OO888OOO
++++++++++++++++++++++++++++++++++++++77$77?7,??++?:~77$$$77I77I$ZZ$$I777????77++++++++++++++++++++++++++++++++++++++++ID8ODOOODOO8DOOODDOO8D8O8DD8OO8D888DDND88
+++++++++++++++++++++++++++++++++++++?I77?7$7,:?+++:~77$77==$7II777Z$$$7I$7I+?++77+++++++++++++++++++++++++++++++++++++?O88Z88DOOD8OO8DOOO8D8OO88O88DN888ZZZOO8D
+++++++++++++++++++++++++++++++++++++I7$I7I$7,~II?+:~$7I??,=I?IOZ$I77ZZ$$$I77I+,?II?+++++++++++++++++++++++++++++++++++?88OOD8OO8DOO8DOOOD8888D8O88D8OO88O888OOO
++++++++++++++++++++++++++++++++++++?I7I?,,=?,~++??,~7$7I~,===+OOOOZ$777$ZZ$7I77I:,~+7I++++++++++++++++++++++++++++++++?8O88OO8DOO8DOO8DDO8ON8OO8N8O88888DDDD888
+++++++++++++++++++++++++++++++++?IIII7I?:,?I?I7+===+IIII~:~===O$$OOZ7II777$$$$II77+=~~II?+++++++++++++++++++++++++++++?ODOOOD8OOD8OO8D8O8888OO8DOO8OD888OZZOO8D
++++++++++++++++++++++++++++++++?I:.?77I?,.+I~I:.....,+7II,~===Z77OO7IIZIIII7$$$$7I777777$7I++++++++++++++++++++++++++++8ZO8DOOODDOOD8OOOD8888DDOO8DDOO8888OOOOO
++++++++++++++++++++++++++++++==I7$7II?I?:I+:.,.:++++~::::,====O77OZI=~I+$OZ$I77$Z$Z7$$$$I7777?+++++++++++++++++++++++++OODOOO88OODDO88DDO8ODDOO8DDOO8888DND8O88
++++++++++++++++++++++++++++++++?7$~+??,+,,,,+IZ$$7:~ZO$$I,~=~=7IIZZI,=+=I8ZOZ$I777$$77$Z$Z+$?I7?+++++++++++++++++++++++O8OO8DOO8D8OO8NOOO88DO88NOZ88DD88OOOO8DN
+++++++++++++++++++++++++++++++==77~II~,:,.I$.~=~=~:~77$$+,~===77?I?+,===?O788Z77II7????I$$$Z=+=?7?+++++++++++++++++++++8OOD8OOOD8O7DDOOOD8888DDOO88D8OO88OOOOOO
++++++++++++++++++++++++++++++==?I7.+?,,,,:$7.~,..::=+77$~:=+==?:=?7=,===?O$OZ7?+II?~I~,7I7Z7$77II$77I++++++++++++++++++O8DOO8DOOOD$O8OD8O8OD8OO88N8OO8O8OD88888
++++++++++++++++++++++++++++++I7I:~,=+,,,:,=7.~=??III??7$~+~===ZZ?~:,,===+O7OZI~~+~,~?,,I$7ZZZ$$$$$I$$77++++++++++++++++O8OO88OO8DO7O8DOO888DO88D8OO88D88OO8DNDD
++++++++++++++++++++++++++++++7?77+.=?,,,~?IIIIIIIII7II7II$7$=~O$+Z7,,==~=IIZ$I,==~.:=,,I$?7$777I$$$$II?77++++++++++++++OO8DOOO8D8O$D8OOOD88D88D8OOODDOO8OOOZOOO
++++++++++++++++++++++++++++++I77==.:=7IIII~,...,,:::,:~=:?I777$7?$$~,==~=???I?,~=~.:I,,I$~7II,,:+IIZ$$+??777?++++++++++ODOOO8DOOODZO8OD8O8ODDOO88D8OO888O888888
+++++++++++++++++++++++++++++++$?=I:I77I~,,?77777$$77$777777I?I7$7$$::~==+I~~=:,~=~:~~==?$:I??=+,~$I$ZI.,,+7777?+++++++=OOOOD8O8O8OZODDOOO88DOO8DDOO8888888DDDD8
++++++++++++++++++++++++++++++++I:I,7I=:I7777$$$$$ZZZZZZZ$$$$$7III7$7$====Z7I~:,~~~.=?=.I7??I??::~ZI$ZZ$$$$$7I7I7I++++++OO88OOOD888Z8OOOOD8O888NOOO88D8O8OOZOZOO
+++++++++++++++++++++++++++++++I+:~7II7I77$$$Z$77777$$$$ZOOOZZ$$$$7II7$77$7~Z$+,~=~.....=??I??I?,~$~I77+==I7$Z7+++III+++Z8OO8D8OO8DZ$OODDO8O8DOO8ODDOOO88888888O
+=+++++++++++++++++++++++++++++I~:III777$Z$Z77I7II77777$$$$$ZOZZZZ$$$7II7$7$II~,~=~.,I=.I$=I???~::Z~??I77.$I7ZI=::=$I7?+ZOO8DOO8888Z$8DOOO88DOO88N8OO88888DNDD88
+=++++++++++++++++++++++++++++I7::I7777$$ZZ777$II??I?Z$$$Z777$$$OZZZZ$$$7II777$~~=~,,~,.+O$I?II=~+I~???I?.$ZI$Z$$$$$I7I7IO8OOO8DO888Z8OOOD8888OD8OO888D888OOOOO8
==+==++++++++++++++++++=++++++I$?:II7777$7$$$?I++++??ZZZZ7II7I7Z$$$$OZZZZ$$$7II777$.,=,.+$~I??:,,:?I7I+??,77=77+=+I$Z$I=+?7?$D8OO8DOI8OD8OOO8N8O888N8OOO88888OOO
===============+==+++===++===+=+?II7I7$$7II$7?III????Z77$7?II7IZOOZ$$$ZZZZZZ$$$7?7$7$7,.+$~II?I7+=I:+??I?.7I=?I=$,III$?...777I$ODO8OID8OOOO8D8O88D8OO88O88DD8888
==========================+====+=II7777$7??7I++==+=:,$$ZZI???I?Z8ZOOO$7$$ZOZZZZ$7$II$77$?7:I?,~?,,$ZI?$I7I7+~II=+,I$IZ$$$$$7I?777OOOIOO8ODDOO8O8DOO888DD88OZO8DD
================================7I77$$$7I??7I:~+??IIII?+II=??II7$$$ZZ7III7$$$ZOZZZ$$$7II7777?,:=,,$~+??:,.?7I?II=:??=7?==I77Z7=~=I7Z?8OD8ZO8OD8OO888D8OO8888OOOO
===============================+II$$$Z$77~?+?~....,,,,.,=I=~II?7Z$$$$III7IOO$$$$ZOZZZZ$Z$?I$7$7?,,$:+?777?I::I??~:?=~III:+IIZ777I~~I7Z8ZO8O888OO88D8OO888888O8O8
===============================III77I77II:++:IIIIII77I7I7I?I=??$$7$$$IIIIIO8OOOZ77$ZOZZ$$$$III$I7II,+?.=I,IZ7III+?7~~I?I~+7I$$Z$I7?=+?7I$88O8888DOOO8O8D88OO8DDD
==============================+II77?$OII?,II7:..:~+??~,:??+?7$7II777$I????ZZZOZ$I777777II?I$Z$$I?7$7$?,~=,+Z~?I:.,?I????:=I=I777Z$7I7I:+IOOOODDOO888DDOO88OOZOOZ
==============================7II77:7O?I?7$~~++II??~.$$7$$:=???I$77I7I?I??ZZ$Z$7IIIIII???ZZ7ZZZ$$$II7777?,+Z~??:?=7=:II+,~?~I$$II7$$$?77?OO88DOO88N8OOO888888888
==============================I?7$I:=$?+I+,77~:+===,.$ZZZ?.~~~+I?II777I??I$ZZO$7II?I?II?=Z$IZOOZZ$$$7?I77$?Z~?~,+:+ZI???++7+I$ZOZIII$$$7I$8O888OD8OOO8O8888DDDD8
=============================+I77I?,=$+I?:,=I::==~:,,I777:.~~~~+ZZZ$??I777IIII7I???I?II,~Z7+77777III7$Z$7I777$~,~:=?~?=::==:II7Z7?I$7I7$$$Z888DOOO8O8N8O88OZZZOO
=============================II7III.:=?I+:.~?,~====:.7$ZZ~.~~~~+Z$ZOO$+??II7IIII????+II,:Z?+IIIII?I$IZZZZZ$II777$,=I~?,?=~$7?77$7~~$ZZ7II8O88DOO8O8D8OOOO8O8888O
============================+I77I=I~..?+I:.~I~:====,.7I77:.~~~~+Z7$Z$?~=??I??I77II??II?I7+~=IIIII+I7I$ZZZ$$$$$?I77$?~?,+~:$~I??7I~:7$$I?I8DO88O8DDOOOO88888DD888
============================7I77~:?I?+~,I:.~?:~+??IIIII7I:.~~~~+Z77$7:~~~~?OZ$7???7III7I7I+II?III.=7~I77$7I77$Z$$$?I77$+~:$~I?+I::,I77+~,ZZ8O8D8OOO888D888OOZOOO
===========================?7I77::I::+,,::.+?==?+~:::+?7I?=~~~~=Z?I$7,~~~~+Z$OO$+?+?=...~I77??II+.=?=IIIII?O7$OZZ$$77?7I7?7~?=$~,::??I:~,OO88DOZ888DDOOO88888OOO
===========================7I$$$:,~:~I,,,:+?+.........,,:,.~~~~=7~I7?.=~~~+Z7$$I~~=?.?I,,7?III??~,I?~IIIII+OI7$$77I7$7$7?77$7~77+::+??,::88OO8888D8OOO88O8888888
====~~======================I$$$?.:,~~.,,:.,..,=+?IIIII?~:.~~~~+III?~,~~~~+Z777?:~~~.=?,:7Z~7777777I=?I?I?~Z=?III7?Z7ZZZ$$7?I777=::I?=.:,ZOOO8DDOOO88ODD888OZZOO
~~~~~~~~========================7I=,~+.,,:.:?=~I???:.Z7I77~~~~~=??II+,~~~~+Z?$7~:~:~.~=.:7$=??:,,.+I77III+++:+III7+Z77$$7I$$77?I77?++I:::OO88DOOO888D8OOO8OOOOZZ
~~~~~~~~~~~~~~~================+I,=.:$.,,,:77=:++++:.ZZOO+,~~~~=?~~::.~~~~=??$I,~~~~.=?,,77=?+,+=.~$I7I+~.:?II??II:$I77$$?7I$$$$7I777?,:,888O8O8ODD8OOO8888O8888
~~~~~~~~~~~~~~~~~~~~~~==========?:?,::,,,:,=7=:++++:.ZOOO=,~~~~=$7+~:.~~~~=7?I?~:~~~.=?,:77~?+,~:,~7~I77III$7???II:Z~?III+Z77ZZ$$7$II777=OOZ88O88OOOO8888888DDDD
~~~~~~~~~~~~~~~~~~~~~~~~~~~=~===::+:~+.,.:,~7=:++++:.Z8OO=,~~~~=Z~IO?,~~~~=?~=~,:~~~?++??I+~??,=~.~?=?I,I?:$II??+.:II?III,7??777$Z$$$$$II7$7ODOOZ88O8D8ZO88ZZZZZ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=::I,...,.:,~7+:+???:.OOOO~,~~~~=O=I$~,~~~~=I~~:,:~~:.,.,,III??:~~,~?~?+,?+,ZI+I77777?+I?I.$~+IZZ$77ZZ$Z$$7I77$7O88DDOOOO88888D88
=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=::+,.:+,,,.~I=,=:,,::~~I7=.~~~~~Z=?I~,:~~~=Z+7?::~:~.....=+:??=...:I~?+,==,$?=?=:~:?IIII?+I==I$ZO7I777ZZ$$7$IIO8D8OOOO888888D888
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~?I:~Z.,,:.+I=~??+===+?7I?=~~~~~O=IZ:.~~~~=Z+Z?::~~~.~I,,IZ???,~~,~I7I?,??,7+=?.=+,$??777I7I=I$$$IIIZOZ$7$ZOOD8OOO88ODD8O88OOOOO
=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~I..:~$.,.::?+........,,::,,~~~~=I~IZ:.~~~~=$+$?::~~~.~+:.?Z~?+,,..:?=?+:=~,$+=?,=+,$~+?:=,??I?I$$I?I$O$7IZD8ODOO888D8OOOO88888OO
~~~~~~~~~~~~~==~~~~~~~~~~~~~~~~~:..,:+.,,:,,...........,,:,~~~~=I??I~.~~~~~Z+Z?,:~~~.~?:,I$~I?I77II=:+?+~~~7?=?,=+,$~+~,?.I$+7III???$8$II$OZO888DDOOOO888O888888
=~~~~~~~~======~~~=~~~~~~~~~~~~~+,I,~Z.,,:.~I~~I??+~.77I77=~~~~~I==+:.~~~~~I?$?:,~~~.:?,.?$=??.=I,:Z??+,,,.??~??::.$:==,=.I+=???I7I?II7I?$8OO8DOOZO88O8D888OZZZZ
===~~~==~~~~~==~~~~~~~~~~~~~~~~~?,+.~?...:.II=:~~~::.I?II+,~~~~=?~~::.~~~~~II?+:.~~:.:I,.?$=??.=I,:$~+?I7I++:~?+=+,I7+?,I.?=~=?ZZI?I7IIII78DO88O88O8D8OOO88OZZZZ
=~==~~=====================~~~~~::+I?~.,,:,~?~::.....+==+~,~~~~~Z7+7~.~~~~~??I?~.~:~++++I?~=??,=I,:7~+?.+?,7$I?,,,.II+?,+.?==++$O?+?I??77IZZO8888D8OZOZO888O8888
=~===~==========================::I:,..,,,,~:~:????=.I+++~,:~~~~I=+I+,~~~~~?=~:,,~~~,,...?II?+,~I,:7~++,+I.I$~?=?$:7+:?,+.??I?=I7,~~7ZOI?78O88NOOZZO8888D88OOO8D
~~~=~~=~~=~~~~=================~::+,..:.,:.~~~:+???=.?~=~:,:~~~~I=+I~,:~~~~Z+7?:.~~~.,...==~??????I=:=?,+?.I$~?,:?,I$=+,,.=+~?=+7,~~I$7=~?88O8DZO88O8D8ZO888ZZZZ
~~~~~~==~~~==~~~~~~~==========~==I=~+I.,,:.~,::++~,,.~:::,,:~~~~7=+?~.:~~~~7+I?~,~~~,=I+.7I~I?:~:,,7I7?~=I,?7~?,:?.I?~+~7:I?=+++=.~~III,~=$ZZ888ODD8ZOOZ88888888
=~~~~~~~~~=~~~~~~~~~~~~~~~~~~~~=?..:~:.,.:.=II=~~+?IIIII?I?:~~~~I==I:.~~~~~I+??:.~~~.:,..=?=??,,,,,~~=?7III7+~?+:?.?+~?,+,~7~+~=?.~~=+?.~=OOOOD8ZZZZO8888888DDDD
=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~..,,~,.,.:,I?.......,.,,::,~~~~~7+==:,:~~~~7+?+:.~~~.:.,.=$~I?,=7:,$7+?~:..+7I?:,?,?+=?,=,~I~+~=:.~~++?,~~O8O8DZZ88888D8OO88ZZZZ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~?:+,~=...,,,..........,,,,,:~~~~7I???~:~~~~7+?=:.~~~.,?,.=Z~I?,~~:,I?=?:...~~,?I?+=7I=?,+,~7~?~=7,~~=:,.~:ZZZ888888D8ZOOO88888OO
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:::.~:..,:,,+?=77II?,$7$7I+:~~~~?=~~:.:~~~~II=::.~~:,,?,.=$~??,~,,,+:=I,~?.+Z$?~:..=?~?:::==~?~=I,~~=?7,~:OOOO8DZZZOZO88888O8888
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~,=,+??,.:.7I+:==~~,,IIIII,:~~~~7=~=:.:~~~~II??=.~~:~==++I~~??~~?:,7:=?,~?.=Z=?+?+?I~:?,~,~77?~=I.~:=?+,~:O88O8OZO88888D8888OZZO
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::?:,,.,.:,~==::....,?=+?+,:~:~~7I+$I::~~~~I~~~,.~~~,,~~.+III?::I:.$:=?::=.=7~?~:=,=$+?,.,:~:?~~I,~:=++.~:ZZZO888888DOOOO888OOOO
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::.,...,.:.~:::=:,,,,I++?+::~~~~7++I+::~~~~$7I~:,~~~,....=~:+???++=I7+??:I.=$:?=::,=7~I,+::7$?:I?:~~=+=,:~ZOOOO8OZZZZOO888888888
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~?:~?I7.,,:,~+=::....,I~=~=,:~~~~I++?=,:~~~~7+7I+.~~:==II:I7=+?~:,,,II+?~:.,~$,+?:~,~I~I.~::$~?::~,:~~??::~,,,,,,:~+?7$ZO8888OO88
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:+,,~~I.,.:,~:::,....,?~~~~,:~~~~I++I=,:~~~~7=?+~.~~~,,=:.~7???:,,..~~~?=:+,+I7I+,=,=I~?,=:,I~?~77.~~~~~.:~,,,,,,,,,,,,,,~O8OOZZZ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::+,~~.,.:.:~III+==++??I7I7:~~~~Z?+I~:,~~~~7+I=:.~~~,.,..~+~+?:,+~,7$I?~:,.~==+???=I7I?~=,,$:?:+?,~~~II,:~......,,,,,,,,:OO88888
~~~~~~:~~::~~~~~~~~~~~~~~~~~~~~~7.?,~Z.,.::II=.......,,:++=:~~~~7I+~,,,~~~~7+?=:.~~~,.~:.~7~+?:,.,.I?=??I7=7?=+?,.,:I??~:~~~,?~+I,::~=I,::8O8O8I,=7I+:,,:OO888D8
I7I~~~:~~::~~~::::::::::::::::~:~,=,:$.:.:,,,.........,,,,::~~~~7III+=,~~~~I=?~:.~~::.,..~?:+?~,.,,?+=?=,I,:Z7++...::~?:~~,II?~?I,:~~=?,::OO888I,=O888O,,8O8OZZZ
$7::~~~~:~~~::::::::::~::::::::::,+,,.:,.,.,:II7I77I:$777??,~~~~I=~::,,~~~~I???+,~~~:.,,,~~~+?I:...7+=I~,?,:$=+?,=,:7??:...~:+=?I::~:=+,,~IIII7I,~ZO88O:,OO8O8OO
7I7+::~~~~~~~~:::~:::::::::::::::,++:+.,,:.I$I.~===~,7$77$~,~~~:$+~~:,,~~~~?~~=:.~~~:.~~.=II7?~,.,.I+=?+,I,:Z=++,,,:?~?:==.7$?~++,:::?=:,:.,::~=+IIIIII~,O888888
877I7~~~~~~~~~~~~~~~::~~:::::::::,:~,..,,:,:7I,::::,:II?II~,~~~~I7+$7=,~~~~I=~::.~~::....~??=?II??+7I???,I,:Z=+?,?,:?:?::,,?++~=~,,~:+I,,~Z8888$,~Z$7+=:,8O8OZZZ
I7I$7~~~~~~~~~~~~~~~~~~~~~~~~~:~7.+::=+:,:.:??,~~===.7I?+=~,~~~~$$=7?::~~~~7+$77,~~:=+??+I?~=I+,,..?I:?I7I?I7I+?,I,:?:+~~~.7~+~+?:::~I~,::7O888$,,888D8~,OO8OZZZ
$$I$+~~~~~~~~~~~~~~~~~~~~~~~~~~:~.,+~I.:,:.~II,~::::,IIII?:,~~~~$7=??:,~~~~7:I?=.~~~:.++.~77??~,..,~::I?,,,:I7??~=+?+~I+:=,7:==++::::=?:,~?II777,,OOOOO~,8O88888
$7Z$=~~~~~~~~:~~~~~~~~~~~~~~~~:::.,::~.:,:.:?I,~,,,,,7IIII:,~~~~$7=$?:,~~~~7~ZZ=.~~~:.+=.~I==I=,+=.7Z7?=,,,~~:=?,:,,7I?=::~=:==++:,::++:,:+?IIII?III7II?,OO88888
+~~$~~~::::~:::::::::::Z7:?=::~:+,?::7.,.:.:,++?IIIIIII77II~~~~~ZO~$+:,~~~~I:ZZ=.=~~~.++.~7~=?=,:,.7Z~I+,?::$Z??.,,,:~++:,.?I+==+,,~~+?,,~,.,,,,,,,:,,:,,O888ZZZ
==??~~:~~~~:::~::$OIO$7$$:::+~~::,?,~~.:,::I:........,,,,~+,::::I?++~~.~~~~$:$Z=.~~~~.==.:I~=I+,==,I?~I+.?::$?=?.?~,$$?~,,.=~==?I+.~~=~,.~?8O88O,,$7?+=~,O888888
~=7?~~~~~~~~~~~~~7ZIZO$OO:+77++:=,I,:7.,.::?,~?I77IIIII7I7777???I?+~~~.~~~~I+=:,.~~~~.==,,I~=I?,~~,7$~I?,=::?+=?,?~,$?+~:$.I$?==~,.~:?I~.:+8888O,,88888~,Z888888
7$7O$$7I=777II?++7??77$7$7I7$$7Z+,+7?=:+77??...,:~~=+=+==~=.????I???II7777I?II?+,:~~:,...~IIII+,::,?7~??,?:,$?=I.?=.7++=:$.?I==??I.~:=:,,~=$$$$$,,ZOO8O=,Z888ZZZ
I=I$$?+~+ZOZZZZZZZOOZOI??77II$$O+..,~~+77+,I$7.+?+++:IZ$Z$?.~~~~$ZZ$7I???????III77$I?~~::~II???:,,,III7?~,,,?==?~+=,$~+?:$.?I=+++=,~:I7?.:=+??77=7IIIIII,Z888ZZZ
7$$~7?=~$OZ$$OZZZZ$$Z7?::~=~~~$Z$,I$+~~?I~,,I$.:::,:,?I777:.~+=~Z8$OOZ+~=~~7$$7II?I?I,,..~?I7$I=~==I?+?I~:,:II7I::,,++?$~$,?I?+==~,~~?I=,~=8O8OZ,,7??+=:,$888888
Z7=7I?=IOZ$Z$~?$==$I==7I$Z7ZO$8Z777IIO.~:,.,+~,~+??I,IOOZ$:.~~:~$O7OO7,~=~~7$$OZ7:+?~.??,:$$=II,,..III7777777$77+:.,~=?$$ZZ$$I7==~.~:+I=.~=8888O:,Z8888+,$888ZOZ
7$ZO~~~$ZZO8OOZZOZZZ7:7,:+:~,~ZOZOO8OZ.,,,..?Z.~?III,?888O:.~~,~$8?ZZ7.~=~~?$78$I:=:~.++,,++=?+:??,IZ+?I:=~,I??77I??7$77ZZI$7II~+~.~~+I~.~=77777,,7ZZZZ+,$888ZOO
I=77+I:IZZOOO88OZZZ?=+::~~IIIZOZI=$=:?.,,,,,+Z.:?+=~,+?I77:.~++:78:ZO=,:=:~I$?O7=:=:~.?I,,I+=??,+=,?Z~??,?~,7$~I:?I+7$?I:::II7I?I+~:,=++.~~+~~==:+????II,788888D
$Z$ZZZZOO88O$$Z8OZ:+?~:~~OOOZIO8?,?::Z.,.:....,::~==+???+?+I?+=~:::~~~,::~:+??8I::~~:.?I,,I+~?I,?I,?Z~??,=:,?I=I:=+=$7??IZ$7$~??I7$???7?II7Z888D:,O88DD+,78888D8
I7ZIZ888888D8OD88O++:+::+ZZZO$ZOI.7::+:$$$$7IIII77777777$$$$$77777$$$$$$$$7?+=:::,,::.:,,,+~=II:?I,?Z:??:+=,I$~?:=7$ZI777ZZI7~+~$~?~++ZZ7??888DO$7OD888+,I888ZZZ
=~7Z:=8ZO88D88DDD8?=:~::~:8OOZZ8I,I~ZZZZZZ$Z$$$777777II7777$$$$$$$$$$$$$$$$$7777777$7$$$$$7?+III,,.::~~I+~:,+7~I=+I~$Z$7$8I=77?~7I?~:+7$$+:88OOO8Z$I777?:I888OOO
$Z=?ZOD88D8DDD8DDOZOI?=~:~:==ZZO+OOZZOZOZZZ$II?+=I=++?+??IIII77$$ZOOZZZ$$77777$$$$$$$$$$$Z$$$$$$$$77777777$$77I7?:??7I7$ZI~~~?$I+7,~:+=I=:,OO=8888OO,...,?88DOZO
I=O8ZODO7OD8DD8O8O88O$~:~~O8D$ZOOOOOOZO8$7I7:,:~I=??I?IIIIII77IIIIIIIIIIIIIIIII77$ZZ$ZZOOZ$77I77777$$$$$$Z$$$$$$$$$ZZ$ZZZZZ$Z7$$7I::::~=?$?II7O88888O887,?D8DOOZ
OO?O888OODDD88O88OO8D8O+I+O887ZOO8OOZ$77$$+~Z8.,$7$7.:D8D8++I777Z8878ZZ7777$Z$ZZ$77II$IIIIII?IIII?II77$77$$$$$$$$$$ZZZZZ$ZZZZZZ$$$$77$7$Z$,,+.O8D8D88O87,=DD8ZOO
Z8D8ND8D8O88D8O88I+8DDII8888OZZOOZZ788++Z?+.OO..8+==.,I??+.:?I77ZD$88$7777778Z8DI$7I=Z88$88ZO$7$$OZ$$8Z7I$Z$$777$$I7$IZ7ZZZO$Z77ZZZZ$77I7$.Z7:ZO8DDD8DO$++ZO8OO8
88O88OZ8OO88OZ8O8$IODN?+I?8DDOZDOO8Z7O==+?+.Z::=OOOO,:8888.,?+?I7O888$77777$I8ZO?77,.$OOI8O$ZI+$OZZOO$$+7ZOOOZZ7?OZOOZZO88OOZO$$7?Z7IIII7I.I+=O8DDDDDD8O$?D8DDD8
ODDZO88ZZZ$Z88DD8+$DDZIO87O$8OZD8IOZ?O?====.ZZZ~Z===,,???+.,?+?+$88DD$I?????O8OD?I?..7OOI8O7$?=7O$$ZO$7+IODZ$ZZ?IZZZOZOZOOZ$8OZOOZOZ777$$7,~$:OZDD88DDDD?IOZ8D8O
?=:~?ODZ$ZODDDNDDDO8D?7D8DDDIOODOIIZ$?7$+==.$ZZ~ZOZO,:OOO8.,?+I?78DD8$+????+ZDO8+++..IO8?8O7$I.?O77$Z7I.~$8O$$Z$$ZZZZOOZ$8DZ$$Z$ZZ7$777I77,Z=+ODDDDO8DDD$+88O88D
III~+I8D8ODNNDDDD88DD8O++$8Z8ZOO$?$7$I$?=?+..7Z:Z,,,,~:~==~~??$??+=+++,?I$??7Z$Z==+..?O8?8O77=.+O$7$Z77.~$$$Z$$:.O$OZ$O=ZOZOZ$IZ7OI?+I777?,=++$8D888DO8D8Z8888DD
O78ZO88DDD88DDDDDNDD88OOZIDDDOO7Z?I+7?=+=7+=,=+~Z.,,:::~~~~~??+II$$$7$7??+7?$$$ZZ++..+77II7I7,.=777II7=.:7$$7$$~?7ZZZ$I,$8ZOOZ?+O8I+=I77I+,=+I78DNDND88888OZ7888
D8ODDDZODDNNNN8888DD8I7IOZDOD8ODZ??+Z?+IZ7=~:+~:Z....,,,,:::?+??IOZZ$$ZZI??IZZ$$$77..=I+?????,.~??I??I:.,7IIII=..IIIOOOZ$OO$$Z7ZZ8O$$I$$Z77OO888DDDDNNDO8OZ?88OZ
DDN$8D8DD88DNNNDDDNDOOO+$Z888ZO8OI7+=+7OO7+:,~:,O~==+?:=III+?????OOZZZZZZI??OZZZZ$$..=I===~=~,.~?===~~:.,?~=~~=..II?++~:7O$I=?+?Z8Z$Z?8OZZ?ODDDDDD8ZZ88DZ$77Z8O7
NDD8DODO88DD8NDNDDD8OOZ$:::+~OZOZO7==7O8O7+~7=+OZ7~8O=~=88I=??+??88888O8O7??888888OI.~ZZZ$$$:,.:?+?++:~.,7I7II?..$$Z$=~+ZZ8O777OZD8Z7OZZZ$I8DDDDDDDNNNDD?Z8O$ZZD
OO8Z$ZDDDDNOOZZDNDDZ??OI===$ZZZOOO7==+++87?=~~:?Z?,$$,~=ZO,~??+??OZOOO$Z$I??DDD8ZO$:.~7$$$7I~,.,OIZ8I7~.,7$$7I+..Z~8O~=:$8Z7+?~?88OZI?88Z$+8DDND88OD8NOD+ZDDZDOD
D$8O88Z$7Z$8DNDD8DD7~I8$:OO8DOZ8OO77?7$IO$+~:~,?Z7.88.~~OO.~?++??D8DDO7$77?+888D$Z7I.~IZZ7~?~,.,OI7Z++:.,7Z7I==..Z:O$.~.=OI::=.:ZD$$7+OOZZ?8DDNDO8NNDD8DII7OO8OZ
DD8ZZOOO8ONNDNDDD88=?$O$:OO8O7O88O7+,$OIO7?=,~,7O=.?=.~~$7,~?+++?8O88OI777I?DODD7Z7?=:IZ$7,+:,.,8?Z8??~.,7$II,=..Z:?$.7:I8I?:=.,78777?$OZZ78DDDDO8DDDO$ZOOO8OODD
O8$OI=8DO87DNDZOD88==Z87~$88D?ODDOZ+,ZO7Z7?=,~,+$$.OD,~=OZ.~+++?+DIDDZI7777?ND887ZI?=~7Z$I,=,:.:8ZO8$I~..7ZI:~~..7,87.~,:$,:,~..787$77ZOZZ78888888D8OID8$+Z7I8Z8
78888O8Z7Z8?DDD7877~?ZO$,7O88ZO8OOO7IZ8$O$+==~==O$,OD,=~ZO.???+?+DIDDO$$I77IOO8D$8II..II?=,?,,,:7IZO?I~~+?O88.~=++,+~:?I$O,,~$7$$D$ZOOZ$$Z$$?++++++?II7I7I7$777I
7ZZ8NON8ZZ7INDD8Z$Z=O8OZO$8ZDOOZ888I+$8I7$?=+~=+OZ:O8==~ZO$I???++D$DD8Z$777IDDN87Z77I7$7I~::?77$Z7777$$7$ZOO8O7I$$$$$$7Z7OOZOOO7=8+?++??7Z$$$$$$I?+=????+I:=7?7O
=ZZ8DDDD888D8DD8O77ZZO8,ZO=$OOZ8$O8IIOZ77777IIIIOIII?777$78O$$$$Z$ZZZ$OZZOZZZ?Z$$OZ77$$Z$$ZO?$7777IIO?++++I7??+++??78D888Z8D888OODI??+=:I$:7D8D$$77??+++??+?II$Z
=ZZ8NNNNNNND8DDDDDDO8888OZDDOOO87ZO?7$$7$$7$777$O$7777777I~~$Z$$$$$$$$77777I~ZO++++++++++?7?~????II~~~$$777I?+=~==?O8DDDOODDDDDDD88D7++=7$=?DDD?7$$ZZZZZ$$ZO88ZZ
+ZZ8DNDDDDDDDDD88DDODOD+7=OI??Z8I$O=:~~~+IIII??7$7?I?++++7+?+=++++++++??????I8$777$$$$$$777$?====+I?$$?::::~~=?I7$77D=7ODZD8ODDDD8Z$$ZZZ?7$$888II???I777I7777777
=ZZODNDDD8DDDDD88OOOOZZOOZZ7??OI~==~==+++++++==ZZO?7I+=++=++??I77$$777I7I??=~+II???++=~::~IZ??I7777O88Z+=======+++?7$O8DDZDD8OZZO8D77II??I$77I777777777$$$$ZZZZZ
")




puts building001
puts ""
puts building002.to_s
puts ""


# puts apartment001
# puts ""



# puts person001																													#QUESTION: How do I stop an object from giving its ID on puts.
# puts ""
# puts person002
# puts ""
# puts person003														


