Rails.application.routes.draw do


#display all teams
get "/teams" => "teams#index"
end

get "/players" => "players#players_index"
end
