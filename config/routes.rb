Rails.application.routes.draw do



  resources :users
  get '/auth/linkedin/callback', to: 'sessions#create', as: 'sessions_create'
  get '/users/:id/finish', to: 'users#finish', as: 'users_finish'
  # put
  root 'welcome#index'
end
