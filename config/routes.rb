Rails.application.routes.draw do



  resources :users
  get '/auth/linkedin/callback', to: 'sessions#create', as: 'sessions_create'
  
  root 'welcome#index'
end
