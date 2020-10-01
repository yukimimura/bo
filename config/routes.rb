Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: 'toppages#index'
  get 'search', to: 'toppages#search'

  devise_for :users
  resources :users do
    member do
      get :followings
      get :followers
    end
  end
  
  resources :posts do
    resources :reviews, only: [:index, :create]
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :relationships, only: [:create, :destroy]
end
