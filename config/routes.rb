Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/recipes" => "recipe#index"
  post "/recipes" => "recipe#create"
  get "/recipes/:id" => "recipe#show"
  patch "/recipes/:id" => "recipe#update"
end
