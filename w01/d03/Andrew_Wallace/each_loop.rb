array = ["wednesday", "macbook", "coffe", "lunch", "apple core"]

array.each do |item|
  puts "Right now I am thinking of #{item}"
end

hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

hash.each do |k, v|
 puts "On #{k.capitalize} it was #{v} outside"
end
