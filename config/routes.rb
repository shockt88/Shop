Shop::Application.routes.draw do

  resources :users

  get '/logout' => 'sessions#destroy', :as => :logout

  root :to => 'products#index'
  
  resources :sessions
  resources :orders
  resources :carts
  resources :cart_items
  resources :reviews
  resources :products
  resources :brands

end
