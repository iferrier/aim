Rails.application.routes.draw do
  get 'comment/index'
  get 'comment/new'
  get 'comment/create'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :campaigns, only: [:index, :new, :create, :show] do
    resources :selections, only: [:new, :create, :destroy]
    resources :comments, only: [:new, :create, :index]
  end
end
