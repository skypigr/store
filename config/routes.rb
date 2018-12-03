Rails.application.routes.draw do
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
