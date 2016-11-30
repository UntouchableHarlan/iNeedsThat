Rails.application.routes.draw do
  root 'static#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  resources :users
  resources :debtors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
