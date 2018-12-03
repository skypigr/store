Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
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
