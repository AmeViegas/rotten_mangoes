Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'

  resources :movies do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:new, :create, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'

  namespace :admin do
    resources :users
  end
end
