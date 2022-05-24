Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :places, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
  
  resources :itineraries, only: [:index, :new, :create, :show] do
    resources :destinations, only: [:create]
  end

end
