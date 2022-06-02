Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :places, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
    resources :destinations, only: [:new, :create]
  end

  resources :itineraries, only: [:index, :create, :show]
  
  # for reorder the psoition
  resources :destinations, only: [:update]

  # custom route for google maps
  get "/get_travel_time", to: "itineraries#get_travel_time"

end
