Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users, only: :show
  post   '/like/:tweet_id' => 'likes#like',   as: 'like'
  delete '/like/:tweet_id' => 'likes#unlike', as: 'unlike'

  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships,  only: [:create, :destroy]
end
