Rails.application.routes.draw do
  root 'welcome#index'
  get 'demo', to: 'welcome#demo'
  resources :users
  get '/users/:id/finish', to: 'users#finish', as: 'users_finish'
  post '/users/:id/finish', to: 'users#initialize_new_user'


  resources :user_interests, only: [:create, :destroy]
  resources :interests, only: [:show]

  resources :matches, only: [:index, :create, :update, :destroy]


  resources :conversations, only: [:index, :destroy] do
    resources :messages, only: [:index, :create, :destroy]
  end

  resources :searches, only: [:index]

  get '/auth/linkedin/callback', to: 'sessions#create', as: 'sessions_create'
  get '/auth/failure', to:'sessions#failure'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/deleteuserinterest/:id', to: 'user_interests#destroy', as: 'user_interest_delete'

end
