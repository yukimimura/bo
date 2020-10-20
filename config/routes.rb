Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: 'toppages#index'
  get 'search', to: 'toppages#search'
  get 'review_sort', to: 'toppages#review_sort'
  get 'fav_sort', to: 'toppages#fav_sort'

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