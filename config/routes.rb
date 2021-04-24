require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'account/home#index'
  # devise_for :users

  mount Sidekiq::Web => '/sidekiq'
end
