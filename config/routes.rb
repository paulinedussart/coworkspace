Rails.application.routes.draw do
  devise_for :owners, path: 'owners'
  devise_for :users, path: 'users'

  mount ActionCable.server => "/cable"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :owner do
    resources :spaces do
      resources :reservations, only: [:index, :edit, :update, :destroy, :accept] do
        member do
          patch :accept
          patch :decline
        end
      end
    end
  end

  resources :owners do

    resources :spaces, only: [:index, :show, :new, :create] do
      resources :reservations, only: [:index, :show, :destroy, :edit, :update]
    end
  end

  resources :spaces, only: [:index, :show] do
    resources :reviews, only: :create
  end

    resources :desks, only: [:create, :new] do
      resources :reservations, only: [:create]
    end

  resources :users, only: [:show, :edit] do
    resources :reservations, only: [:index]
  end

  resources :reservations, only: [] do
    get "/paiement", to: "reservations#paiement", as: :paiement
    resources :payments, only: [:new, :create]
  end

  resources :spaces, only: [:index, :show]

  resources :owners do
    get "dashboard", to: "pages#dashboard"
  end
end
