Rails.application.routes.draw do

  get 'admin', to: "admin#index"      # admin_path
  get 'login', to: "access#new"       # login_path
  post 'login', to: 'access#create' 
  delete 'logout', to: 'access#destroy' # logout

  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  resources :products
  
  get 'shopper/index'                 # shopper_index_path
  get 'shopper' , to: 'shopper#index' # shopper_path
  root 'shopper#index', as: 'root'    # root_path
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
