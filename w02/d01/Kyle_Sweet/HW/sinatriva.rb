require 'sinatra'
get '/' do
  "Who was the first man in space?"
end


get '/:yuri_gagarin' do
case params[:yuri_gagarin]
  when "yuri_gagarin"
  "Correct who was the first man on the moon?"
else
  "Please try again space cadet..."
  end
end


get '/:yuri_gagarin/:neil_armstrong' do
case params[:neil_armstrong]
when"neil_armstrong"
  "Correct...What unlucky apollo mission failed?"
else
  "Please try again space cadet..."
  end
end

get '/:yuri_gagarin/:neil_armstrong/:apollo_13' do
case params[:apollo_13]
when"apollo_13"
  "You really know your space!"
else
  "Please try again space cadet..."
  end
end


#     "Correct! Who Was the first man on the moon?"
#   when "neil_armstrong"
#     "Correct! What unlucky mission failed it's trip to the moon?"
#   when "apollo_13"
#     "Correct! Great job you really know three questions about space..."
#   else
#     "Please try again space cadet..."
#   end
# end

