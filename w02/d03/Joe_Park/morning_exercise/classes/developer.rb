class Developer

	attr_accessor :name, :lang

	def initialize(name, lang)
		@name = name
		@lang = lang
	end

	def to_s
		"My name is #{@name} and I love to program in #{@lang}!"
	end


end

