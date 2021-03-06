Koreyomo::Application.routes.draw do
  get "home/index"
  devise_for :users

  # twitter-auth
  get '/auth/:provider/callback', :to => 'sessions#callback'
  post '/auth/:provider/callback', :to => 'sessions#callback'
  get '/logout' => 'sessions#destroy', :as => :logout
  get '/auth/failure' => 'sessions#failure'

  resources :tasks do
    collection do
      get :done
    end

    member do
      post :increase_point
    end
  end
  resources :books

  root 'home#index'
end
