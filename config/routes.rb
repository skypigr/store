Rails.application.routes.draw do

  get 'admin', to: "admin#index"

  get 'login', to: "access#new"
  post 'login', to: 'access#create'
  delete 'logout', to: 'access#destroy'

  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  resources :products
  get 'shopper/index'
  get 'shopper' , to: 'shopper#index'
  root 'shopper#index', as: 'root'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
