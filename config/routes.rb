Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new"
  post "/articles", to: "articles#create"
  root "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
end
