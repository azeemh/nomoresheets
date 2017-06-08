Rails.application.routes.draw do
  mount Lockup::Engine, at: '/lockup'
  resources :real_accounts
  resources :smurves
  get "/home" => "pages#show", page: "home"
  get "/about" => "pages#show", page: "about"
  #this should be the last route
  root "pages#show", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
