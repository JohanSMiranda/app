Rails.application.routes.draw do
  resources :profiles

  delete '/logout', to: "sessions#destroy", as: 'logout'

  post '/login', to: "sessions#create", as: "new_user_session"
  get '/login', to: "sessions#login", as: "login"

  delete "/user/:id", to: "users#destroy", as: "user_destroy"
  patch "/user/:id", to: "users#update"
  get "/user/:id/edit", to: "users#edit", as: "user_edit" 
  get "/user/:id", to: "users#show", as: "user"
  get '/users', to: "users#index"
  post '/users', to: "users#create"
  get '/signup', to: "users#new", as: "signup"

  delete "/article/:id", to: "articles#destroy", as: "article_destroy"
  patch "/article/:id", to: "articles#update"
  get "/article/:id", to: "articles#show", as: "article"
  get "/articles/:id/edit", to: "articles#edit", as: "article_edit" 
  get "/articles/new", to: "articles#new"
  get "/articles", to: "articles#index"
  post "/articles", to: "articles#create"
  root "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
end
