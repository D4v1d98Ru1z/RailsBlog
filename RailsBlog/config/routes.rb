Rails.application.routes.draw do

  root 'home#index'
  get '/new', to: "home#new"
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
