Rails.application.routes.draw do

  root to:'companies#index'

  get '/companies', to: 'companies#index'
  get '/companies/:id', to: 'companies#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
