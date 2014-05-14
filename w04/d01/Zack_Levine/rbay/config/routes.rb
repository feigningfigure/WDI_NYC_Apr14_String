Rails.application.routes.draw do
  get "/members" => "members#index"
  get "/auctions" => "auctions#index"
end
