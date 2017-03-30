Rails.application.routes.draw do
  root 'home#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :home, only: [:index]
  resources :microposts, only: %i(create destroy)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
