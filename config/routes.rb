Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :places, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
    resources :destinations, only: [:new, :create]
  end
  
  resources :itineraries, only: [:index, :create, :show]

end
