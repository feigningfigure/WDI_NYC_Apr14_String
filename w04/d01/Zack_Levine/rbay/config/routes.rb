Rails.application.routes.draw do
  get "/members" => "members#index"
   # display one member
  get "/members/:id" => "members#info", as: :member
  get "/members/:id/config" => "members#config", as: :member_config
  get "/auctions" => "auctions#index"
end
