


names = {:jp ['Joe, Park'], :am ['Artem, Murga'], :jr ['John, Randall'], :wc ['Wilson, Chan',] :ns ['Nelson, Schubart'], :cb ['Christopher, Bajorin'], :cl ['Christopher, Lee'], :bt ['Ben, Ticsay], :jr ['Joel, Rosenblatt'], :dv ['Declan, Van'],:aw [ 'Andrew, Wallace'], :em ['Emmanuel', 'Tucker'], :nk ['Nancy' 'Ko'], :dm ['Dara', 'Mao'], :jm ['Jonathan', 'Milgrom'], :lg ['Liz', 'Goldstein'], :js ['Jane', 'Shin'], :vr ['Victor', 'Rodriguez'], :dm ['David', 'Montricher'], :ks ['Kyle', 'Sweet'], :kb [
	'Keyan', 'Bagheri'], :mt ['Mason', 'Tang'], :sl ['Sophie', 'Laffont'], :zl ['Zack, 'Levine']} #revise string make identical to exercise hypo

	names = Hash.new

	spring_wdi.each do |name|
		first_name, last_name = name.split
		initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
	spring_hash [initials_symbol] = [first_name, last_name]

	end

	puts spring_hash

require 'Faker'

class Person

		#attr_accessor:name, :age, :company, :email- Not needed here because its a getter & setter

def initialize (name, age, company, email)
	@name = Faker::Name.name
	@age = rand(18..75)
	@company = Faker::Company.name
	@email = Faker::Internet.email
end

def to_s
 "My name is #{@name}, Im am #{@age} years old. Work at #{@company} and can be reached at #{@email}"
end
end

arr = []
50.times do 
	arr << Person.new
end

peope_array.each do |person|
	puts person.to_s
end
