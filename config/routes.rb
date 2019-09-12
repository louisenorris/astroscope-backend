Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show]
  resources :starsigns, only: [:index, :show]
  resources :horoscopes, only: [:index, :show]
  post '/login', to: 'auth#create' 
  get '/validate', to: 'auth#validate_token'
  get '/today', to: 'horoscopes#today_horoscope'


end
