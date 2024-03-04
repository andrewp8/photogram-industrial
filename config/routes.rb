Rails.application.routes.draw do
  root "photos#index"

  devise_for :users

  # convention is to alphabetize the routes
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  # resources :users, only: :show <-- access to a particular actions from the controller only: [:show, :update, ...]

  get "/:username" => "users#show", as: :user
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  
end
