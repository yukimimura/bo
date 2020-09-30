Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  resources :users
  
  root to: 'toppages#index'
  get 'search', to: 'toppages#search'
  
  resources :posts do
    resources :reviews, only: [:index, :create]
  end
end
