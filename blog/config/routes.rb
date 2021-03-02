Rails.application.routes.draw do

  get 'detail', to: 'details#index'
  get 'details', to: 'details#new'
  post 'details', to: 'details#create'

  root 'products#index'

  resources :credentials
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
