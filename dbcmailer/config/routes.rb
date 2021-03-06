Rails.application.routes.draw do
  resources :users, except: :index
  resources :groups
  resources :events
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
end
