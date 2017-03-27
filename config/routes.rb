Rails.application.routes.draw do
  get 'homes/index'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	get  '/signup',  to: 'users#new'
	root 'homes#index'  
end
