Rails.application.routes.draw do
  root 'static#index'
  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
