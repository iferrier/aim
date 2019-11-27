Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]
  resources :campaigns, only: [:index, :new, :create, :show] do
    resources :selections, only: [:new, :create, :destroy]
  end
end
