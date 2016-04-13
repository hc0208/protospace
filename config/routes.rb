Rails.application.routes.draw do
  devise_for :users
  root 'prototype/ranking#index'
  resources :tags, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]
  resources :prototypes, except: [:index] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
    collection do
      get 'newest'
    end
  end
end
