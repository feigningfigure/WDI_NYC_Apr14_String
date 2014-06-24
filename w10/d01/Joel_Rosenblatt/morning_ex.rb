json = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]'

myhash = JSON.parse(json)

array = []

myhash.each do |person|
  array << "#{person["lastname"]}, #{person["firstname"]}"
end

array.sort_by{|word| word.downcase}

puts array
