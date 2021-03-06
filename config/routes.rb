Rails.application.routes.draw do
  root 'static#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  get 'paying' => 'debtors#update'

  resources :users do
    resources :debtors
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
