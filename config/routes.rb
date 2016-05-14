Rails.application.routes.draw do

  resources :users
  resources :matches
  resources :user_interests, only: [:create, :destroy]

  get '/auth/linkedin/callback', to: 'sessions#create', as: 'sessions_create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/users/:id/finish', to: 'users#finish', as: 'users_finish'
  post '/users/:id/finish', to: 'users#update'

  root 'welcome#index'
end
