require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello_world#index'

  namespace :v1 do
    namespace :account do
      resources :dashboard,   only:   [:index]
      resources :class_rooms, except: %i[new edit destroy]
      resources :tasks,       except: %i[new edit destroy]
      resources :marks,       only:   %i[show index]
    end
  end

  mount Sidekiq::Web => '/sidekiq'

  get '*path', to: 'hello_world#index', via: :all
end
