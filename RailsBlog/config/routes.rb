Rails.application.routes.draw do

  root 'home#index'
  get '/new', to: "home#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end