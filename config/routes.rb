Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show]
  resources :starsigns, only: [:index, :show]
  resources :horoscopes, only: [:index, :show]
  post '/login', to: 'auth#create' 

end
