Rails.application.routes.draw do
  get 'pages/index'
root  'pages#index'
    resources :rentals
  resources :vehicles
  resources :customers
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
