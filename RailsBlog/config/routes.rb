Rails.application.routes.draw do

  root 'home#index'
  get '/new', to: "home#new"
  get '/blog', to: "blog#index"
  #where I'm going to redirect the data
  get '/', to: "home#index"
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
