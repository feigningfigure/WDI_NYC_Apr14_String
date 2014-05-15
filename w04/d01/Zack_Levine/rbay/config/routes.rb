Rails.application.routes.draw do
  get "/members" => "members#index"
   # display one member
  get "/members/:id" => "members#info", as: :member
  get "/members/:id/config" => "members#config", as: :member_config
  get "/members/:id/edit" => "members#edit", as: :member_edit    # hand in hand
   # renders a NEW cookbook form
  get "/new_member" => "members#new_member"

  get "/auctions" => "auctions#index"
end
