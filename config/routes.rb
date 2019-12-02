Rails.application.routes.draw do

  get 'campaigns/:id/download', to: "campaigns#download", as: 'download'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :campaigns, only: [:index, :new, :create, :show, :edit, :update] do
    resources :selections, only: [:new, :create, :destroy]
    resources :comments, only: :create
  end
end
