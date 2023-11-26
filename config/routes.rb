# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  get 'home/index'

  resources :posts, only: %i[index show new create edit update destroy]
end
