Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :owners do
    resources :spaces, only: [:index, :show, :new, :create]
  end

  resources :reservations, only: [:index, :show]

  resources :spaces, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
  end
end
