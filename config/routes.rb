# frozen_string_literal: true

Rails.application.routes.draw do
  resources :post_likes, controller: 'likes'
  devise_for :users
  resources :comments
  root to: 'home#index'

  get 'home/index'

  resources :posts
end
