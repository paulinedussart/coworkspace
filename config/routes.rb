Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaces, only: [ :index, :show ]

end
