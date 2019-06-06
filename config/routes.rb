Rails.application.routes.draw do
  devise_for :owners, path: 'owners'
  devise_for :users, path: 'users'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :owners do
    resources :spaces, only: [:index, :show, :new, :create] do
      resources :reservations, only: [:index, :show, :destroy, :edit, :update]
    end
  end

  resources :spaces, only: [:index, :show] do
    resources :reviews, only: :create
  end

  resources :users, only: [:show, :edit] do
    resources :reservations, only: [:new, :index, :create, :show]
  end


  resources :spaces, only: [:index, :show]

  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end

end
