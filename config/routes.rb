Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :owners do
    resources :spaces, only: [:index, :show, :new, :create] do
      resources :reservations, only: [:index, :show, :destroy, :edit, :update]
    end
  end

  resources :spaces, only: [:index, :show]


  resources :users do
    resources :reservations, only: [:new, :create, :index, :show]
  end
end
