Rails.application.routes.draw do
  resources :reviews
 
  resources :rentals do
	resources :reviews
  end

controller :sessions do
		get 'login' => :new
		post 'login' => :create
		get 'logout' => :destroy
		delete 'logout' => :destroy
end
  resources :vehicles
  resources :customers
  get 'pages/index'
  root  'pages#index'
  resources :rentals
  resources :companies
  get 'search', :to => 'pages#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
