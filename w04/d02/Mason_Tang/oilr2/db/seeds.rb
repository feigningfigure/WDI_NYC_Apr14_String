
Country.delete_all
Oilfield.delete_all




operators = [
  "Exxon",
  "BP",
  "Royal Dutch Shell",
  "Standard Oil",
  "Yukos",
  "Aramco"
]



operators.each do |operator_name|
  Operator.create({
    name: operator_name
    })
end


10.times do

  country = Country.new({
    title: "Saudi Arabia",
    description: "ton of barrels"
    })


  oilfields = []


  10.times do

    oilfield = Oilfield.create({
      title: "Ghawar",
      content: "high output"
      })


    random_operators = Operator.all
    3.times do
      valid_operator_name = random_operators.to_a.pop.name
      random_percentage = rand(1..100)

      oilfield.add_stake(
        random_percentage,
        valid_operator_name
        )
    end

    oilfield.save


    oilfields << oilfield
  end


  oilfields.each do |oilfield|

    country.oilfields << oilfield
  end



  country.save!

end




# Country.delete_all
# Oilfield.delete_all




# operators = [
#   "Exxon",
#   "BP",
#   "Royal Dutch Shell",
#   "Pemex",
#   "Gazprom",
#   "Saudi Aramco"
#   "Petrobas"
#   "NIOC"
#   "Lukoil"
#   "ConocoPhillips"
# ]



# operators.each do |operator_name|
#   Operator.create({
#     name: operator_name
#     })
# end


# 10.times do

#   country = Country.new({
#     title: "Saudi Arabia",
#     description: "ton of barrels"
#     })


#   oilfields = []




#     oilfield = Oilfield.create({
#       title: "Ghawar",
#       content: "high output"
#       })

#     oilfield = Oilfield.create({
#       title: "Burgan Field",
#       content: "high output"
#       })

#     oilfield = Oilfield.create({
#       title: "Sugar Loaf Field",
#       content: "high output"
#       })

#     oilfield = Oilfield.create({
#       title: "Cantarell Field",
#       content: "high output"
#       })

#     oilfield = Oilfield.create({
#       title: "Tengiz Field",
#       content: "high output"
#       })


#     random_operators = Operator.all
#     3.times do
#       valid_operator_name = random_operators.to_a.pop.name
#       random_percentage = rand(1..33)

#       oilfield.add_stake(
#         random_percentage,
#         valid_operator_name
#         )
#     end

#     oilfield.save


#     oilfields << oilfield
#   end


#   oilfields.each do |oilfield|

#     country.oilfields << oilfield
#   end



#   country.save!

