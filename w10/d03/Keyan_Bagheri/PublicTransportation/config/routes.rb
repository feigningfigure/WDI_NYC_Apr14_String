Rails.application.routes.draw do
  get "subway_lines/index" => "subway_lines#index"
  get "subway_lines/:id" => "subway_lines#show"
  get "stations/:id" => "stations#show"
end
