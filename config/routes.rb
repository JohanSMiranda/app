Rails.application.routes.draw do

  delete '/logout', to: "sessions#destroy", as: 'logout'

  post '/login', to: "sessions#create", as: "new_user_session"
  get '/login', to: "sessions#login", as: "login"

  post '/signup', to: "users#create", as: "new_user_registration"
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
