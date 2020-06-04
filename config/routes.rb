Rails.application.routes.draw do
  resources :images
  devise_for :users
  root to: 'images#index'
  # path: '',
  # path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   registration: 'signup'
  # },
  # controllers: {
  #   sessions: 'sessions',
  #   registrations: 'registrations'
  # }
  
  # get '/profile', to: 'profile#show'
  # resources :users, only: [:show]


  #resources :profile, defaults: {format: :json}
  #get '/profile', to: 'profile#show' 
  #put '/login', to: 'pages#home' 
  #put '/profile', to: 'profile#show' 
 # get '/profile', to: 'profile#show' as:'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
