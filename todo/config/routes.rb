Rails.application.routes.draw do

  root 'notes#index'

  resources :notes
  resources :users, only: [:new, :create]

  get 'password', to: 'users#change_password'

  post 'password', to: 'users#update_password'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#logout'

  get 'welcome', to: 'sessions#welcome'

  get 'details', to: 'details#new'

  post 'details', to: 'details#crete'

end
