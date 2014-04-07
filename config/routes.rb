Koreyomo::Application.routes.draw do
  resources :tasks

  get "home/index"
  devise_for :users
  get "home/index"

  # twitter-auth
  get '/auth/:provider/callback', :to => 'sessions#callback'
  post '/auth/:provider/callback', :to => 'sessions#callback'
  get '/logout' => 'sessions#destroy', :as => :logout
  get '/auth/failure' => 'sessions#failure'

  resources :archives

  resources :books

  root 'home#index'
end
