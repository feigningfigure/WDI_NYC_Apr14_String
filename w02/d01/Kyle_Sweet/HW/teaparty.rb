require 'sinatra'

battle = ["Neel" , "Omar"]

get '/:instance/:neel/:omar' do
case params[:instance]
when "tea"
"Neel and Omar are having a lovely tea party"
when "battle"
  "WINNER!:"
battle.shuffle[01]
else
  "It's either war or peace."
  end
end
