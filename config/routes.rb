Rails.application.routes.draw do

  get 'wikis', to: 'wikis#search'
  # 後で消しておく↑
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: 'toppages#index'
  get 'search', to: 'toppages#search'

  devise_for :users
  resources :users do
    member do
      get :followings
      get :followers
      get :likes
    end
  end
  
  resources :posts do
    resources :reviews, only: [:create]
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :relationships, only: [:create, :destroy]
end
